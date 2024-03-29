import os
from os.path import join as opj
from omegaconf import OmegaConf
from importlib import import_module
import argparse

import cv2
import numpy as np
import torch
from torch.utils.data import DataLoader

from cldm.plms_hacked import PLMSSampler
from cldm.model import create_model

def tensor2img(x):
    '''
    x : [BS x c x H x W] or [c x H x W]
    '''
    if x.ndim == 3:
        x = x.unsqueeze(0)
    BS, C, H, W = x.shape
    x = x.permute(0,2,3,1).reshape(-1, W, C).detach().cpu().numpy()
    x = np.clip(x, -1, 1)
    x = (x+1)/2
    x = np.uint8(x*255.0)
    if x.shape[-1] == 1:
        x = np.concatenate([x,x,x], axis=-1)
    return x

@torch.no_grad()
def main(config_path, weights, data, output_path, batch_size=1, repaint=True, unpair=True, denoise_steps=50, img_H=512, img_W=384, eta=0.0, is_api=False):
    batch_size = batch_size
    img_H = img_H
    img_W = img_W

    config = OmegaConf.load(config_path)
    config.model.params.img_H = img_H
    config.model.params.img_W = img_W
    params = config.model.params

    model = create_model(config_path=None, config=config)
    model.load_state_dict(torch.load(weights, map_location="cpu"))
    model = model.cuda()
    model.eval()

    sampler = PLMSSampler(model)
    dataset = getattr(import_module("dataset"), config.dataset_name)(
        data_root_dir=data,
        img_H=img_H,
        img_W=img_W,
        is_paired=not unpair,
        is_test=True,
        is_sorted=True,
        is_api=is_api
    )
    dataloader = DataLoader(dataset, num_workers=4, shuffle=False, batch_size=batch_size, pin_memory=True)

    shape = (4, img_H//8, img_W//8) 
    save_dir = opj(output_path, "unpair" if unpair else "pair")
    os.makedirs(save_dir, exist_ok=True)
    for batch_idx, batch in enumerate(dataloader):
        print(f"{batch_idx}/{len(dataloader)}")
        z, c = model.get_input(batch, params.first_stage_key)
        bs = z.shape[0]
        c_crossattn = c["c_crossattn"][0][:bs]
        if c_crossattn.ndim == 4:
            c_crossattn = model.get_learned_conditioning(c_crossattn)
            c["c_crossattn"] = [c_crossattn]
        uc_cross = model.get_unconditional_conditioning(bs)
        uc_full = {"c_concat": c["c_concat"], "c_crossattn": [uc_cross]}
        uc_full["first_stage_cond"] = c["first_stage_cond"]
        for k, v in batch.items():
            if isinstance(v, torch.Tensor):
                batch[k] = v.cuda()
        sampler.model.batch = batch

        ts = torch.full((1,), 999, device=z.device, dtype=torch.long)
        start_code = model.q_sample(z, ts)     

        samples, _, _ = sampler.sample(
            denoise_steps,
            bs,
            shape, 
            c,
            x_T=start_code,
            verbose=False,
            eta=eta,
            unconditional_conditioning=uc_full,
        )

        x_samples = model.decode_first_stage(samples)
        for sample_idx, (x_sample, fn,  cloth_fn) in enumerate(zip(x_samples, batch['img_fn'], batch["cloth_fn"])):
            x_sample_img = tensor2img(x_sample)  # [0, 255]
            if repaint:
                repaint_agn_img = np.uint8((batch["image"][sample_idx].cpu().numpy()+1)/2 * 255)   # [0,255]
                repaint_agn_mask_img = batch["agn_mask"][sample_idx].cpu().numpy()  # 0 or 1
                x_sample_img = repaint_agn_img * repaint_agn_mask_img + x_sample_img * (1-repaint_agn_mask_img)
                x_sample_img = np.uint8(x_sample_img)

            to_path = opj(save_dir, f"{fn.split('.')[0]}_{cloth_fn.split('.')[0]}.jpg")
            cv2.imwrite(to_path, x_sample_img[:,:,::-1])

def build_args():
    parser = argparse.ArgumentParser()
    parser.add_argument("--config_path", type=str)
    parser.add_argument("--model_load_path", type=str)
    parser.add_argument("--batch_size", type=int, default=16)
    parser.add_argument("--data_root_dir", type=str, default="./DATA/zalando-hd-resized")
    parser.add_argument("--repaint", action="store_true")
    parser.add_argument("--unpair", action="store_true")
    parser.add_argument("--save_dir", type=str, default="./samples")

    parser.add_argument("--denoise_steps", type=int, default=50)
    parser.add_argument("--img_H", type=int, default=512)
    parser.add_argument("--img_W", type=int, default=384)
    parser.add_argument("--eta", type=float, default=0.0)
    args = parser.parse_args()
    return args

if __name__ == "__main__":
    args = build_args()
    main(config_path=args.config_path, weights=args.model_load_path, output_path=args.save_dir, data=args.data_root_dir)

