#todo
import sys
import subprocess
import os
import shutil

def process_image_cli(image_path, output_path, json_path):
    filename, _ = os.path.splitext(os.path.basename(image_path))

    # Define output paths for image and JSON
    output_image_path = os.path.join(output_path, filename + "_rendered.png")
    output_json_path = os.path.join(json_path, filename + "_keypoints.json")
    
    # Ensure the JSON output directory exists
    os.makedirs(json_path, exist_ok=True)

    # Command to run OpenPose using openpose.bin
    command = [
        './openpose/openpose/build/examples/openpose/openpose.bin',
        '--model_folder', './openpose/openpose/models',
        '--image_dir', image_path,
        '--write_images', output_path,
        '--write_json', json_path,  # Save directly to the json_path
        '--hand',
        '--disable_blending',
        '--display', '0'
    ]
    
    # Execute the OpenPose command
    subprocess.run(command)

    # Move and rename the keypoints JSON file if it exists
    temp_json_path = os.path.join(json_path, '0_keypoints.json')
    if os.path.exists(temp_json_path):
        shutil.move(temp_json_path, output_json_path)

def main(image_dir, output_path, json_path, model_path='./openpose/models'):
    # Ensure output and json directories exist
    os.makedirs(output_path, exist_ok=True)
    os.makedirs(json_path, exist_ok=True)
    process_image_cli(image_dir,output_path,json_path)
#    for filename in os.listdir(image_dir):
#        if filename.endswith('.jpg') or filename.endswith('.png'):
#            image_path = os.path.join(image_dir, filename)
#            process_image_cli(image_path, output_path, json_path)

if __name__ == "__main__":
    image_dir = "./data/test/image" 
    output_path = "./data/test/openpose"
    json_path = './data/test/openpose_json'  
    main(image_dir, output_path, json_path) 
