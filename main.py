from dpm.main_densepose import main as densepose
from schp.main_schp import main as schp
from opse.main import main as op
from main_stbl import main as stv
from agmp.agnostic_map import main as agmp
import argparse
import threading

argparser = argparse.ArgumentParser(description='Virtual Try-On')
argparser.add_argument('--stv', type=str, default='/content/drive/MyDrive/VITONHD.ckpt', help='input directory')
argparser.add_argument('--data', type=str, default='./data', help='input directory')
args = argparser.parse_args()

def run_densepose():
    print("Starting densepose")
    densepose(input_dir = './data/test/image', 
              output_dir = './data/test/image-densepose', 
              weights = './dpm/models/model_final_162be9.pkl', 
              config_path = './dpm/model_configs/densepose_rcnn_R_50_FPN_s1x.yaml'
             )
    print('Done... DensePose')
    densepose_done.set()

def run_schp():
    print("Starting SCHP")
    schp(input_path = './data/test/image',
         output_path = './data/test/image-parse-v3',
         weights = './schp/pretrain_model/exp-schp-201908261155-lip.pth'
        )
    print("Done... SCHP")
    schp_done.set()

def run_op():
    print("Starting OpenPose")
    op(image_dir='./data/test/image',
       json_path='./data/test/openpose_json',
       output_path='./data/test/openpose',
       model_path='./opse/models'
      )
    print("Done... OpenPose")
    op_done.set()

def run_agmp():
    op_done.wait()
    schp_done.wait()
    print("Starting AGMP")
    agmp(data_path = './data/test',
         output_path = './data/test/agnostic-v3.2',
         mask_path = './data/test/agnostic-mask'
        )
    print("Done... AGMP")
    agmp_done.set()
    
def run_stv(is_api=False):
    densepose_done.wait()
    agmp_done.wait()
    schp_done.wait()
    op_done.wait()
    global args
    print("Starting StableVITON")
    stv(config_path='./configs/VITON512.yaml', 
        data = './data' , 
        output_path='output', 
        weights='/content/drive/MyDrive/VITONHD.ckpt',
        is_api=is_api,
        img_H = 1280,
        img_W = 576
       )
    print("Done...")

if __name__ == "__main__":
               
    densepose_done = threading.Event()
    schp_done = threading.Event()
    agmp_done = threading.Event()
    op_done = threading.Event()

    densepose_thread = threading.Thread(target=run_densepose)
    schp_thread = threading.Thread(target=run_schp)
    agmp_thread = threading.Thread(target=run_agmp)
    stv_thread = threading.Thread(target=run_stv)
    op_thread = threading.Thread(target=run_op)

    densepose_thread.start()
    schp_thread.start()
    agmp_thread.start()
    op_thread.start()

    densepose_thread.join()
    schp_thread.join()
    agmp_thread.join()
    op_thread.join()

    stv_thread.start()
    stv_thread.join()
    print("All tasks completed!")
