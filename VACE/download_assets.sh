#!/bin/bash
echo "creating directory workflows"
mkdir /workspace/ComfyUI/user/default/workflows/VACE
echo "installing workflows"
#wget -r -np -nH --cut-dirs=3 -P /workspace/ComfyUI/user/default/workflows/VACE https://github.com/dsigmabcn/Runpod_scripts/tree/main/VACE/workflows
wget -P /workspace/ComfyUI/user/default/workflows/VACE https://raw.githubusercontent.com/dsigmabcn/Runpod_scripts/refs/heads/main/VACE/workflows/Wan_VACE_Control_Depth.json
wget -P /workspace/ComfyUI/user/default/workflows/VACE https://raw.githubusercontent.com/dsigmabcn/Runpod_scripts/refs/heads/main/VACE/workflows/Wan_VACE_Control_pose.json
wget -P /workspace/ComfyUI/user/default/workflows/VACE https://raw.githubusercontent.com/dsigmabcn/Runpod_scripts/refs/heads/main/VACE/workflows/Wan_VACE_reference_1_image.json
wget -P /workspace/ComfyUI/user/default/workflows/VACE https://raw.githubusercontent.com/dsigmabcn/Runpod_scripts/refs/heads/main/VACE/workflows/Wan_VACE_reference_2_images.json
sleep 1

echo "installing inputs"

wget -P /workspace/ComfyUI/input https://github.com/dsigmabcn/Runpod_scripts/raw/refs/heads/main/VACE/inputs/3048929-hd_1280_720_24fps.mp4 
wget -P /workspace/ComfyUI/input https://github.com/dsigmabcn/Runpod_scripts/raw/refs/heads/main/VACE/inputs/5580a33d-0aa6-45e5-bc98-b6c46cbfe973.jpeg
wget -P /workspace/ComfyUI/input https://github.com/dsigmabcn/Runpod_scripts/raw/refs/heads/main/VACE/inputs/5823532-sd_960_540_25fps.mp4
wget -P /workspace/ComfyUI/input https://github.com/dsigmabcn/Runpod_scripts/raw/refs/heads/main/VACE/inputs/B09TBPKAMM8GFQV725298C3KX0.jfif
sleep 1
