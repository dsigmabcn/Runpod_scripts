#!/bin/bash
echo "creating directory workflows for Lora"
mkdir /workspace/ComfyUI/user/default/workflows/Lora_utils

echo "installing workflows"
wget -P /workspace/ComfyUI/user/default/workflows/Lora_utils https://raw.githubusercontent.com/dsigmabcn/Runpod_scripts/refs/heads/main/LORA_training_scripts/Automatic_resizing_captioning.json
sleep 1

echo "installing inputs"

#wget -P /workspace/ComfyUI/input https://github.com/dsigmabcn/Runpod_scripts/raw/refs/heads/main/VACE/inputs/3048929-hd_1280_720_24fps.mp4 
#wget -P /workspace/ComfyUI/input https://github.com/dsigmabcn/Runpod_scripts/raw/refs/heads/main/VACE/inputs/5580a33d-0aa6-45e5-bc98-b6c46cbfe973.jpeg
#wget -P /workspace/ComfyUI/input https://github.com/dsigmabcn/Runpod_scripts/raw/refs/heads/main/VACE/inputs/5823532-sd_960_540_25fps.mp4
#wget -P /workspace/ComfyUI/input https://github.com/dsigmabcn/Runpod_scripts/raw/refs/heads/main/VACE/inputs/B09TBPKAMM8GFQV725298C3KX0.jfif
#wget -P /workspace/ComfyUI/input https://raw.githubusercontent.com/dsigmabcn/Runpod_scripts/refs/heads/main/VACE/inputs/XTYARK2DADKN4NK8PGAZMSGVN0.jfif
sleep 1
