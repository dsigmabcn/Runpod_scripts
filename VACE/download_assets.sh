#!/bin/bash
echo "installing workflows"
wget -r -np -nH --cut-dirs=3 -P /workspace/ComfyUI/input https://github.com/dsigmabcn/Runpod_scripts/tree/main/VACE/inputs
echo "creating directory workflows"
mkdir /workspace/ComfyUI/user/default/workflows/VACE
echo "installing workflows"
wget -r -np -nH --cut-dirs=3 -P /workspace/ComfyUI/user/default/workflows/VACE https://github.com/dsigmabcn/Runpod_scripts/tree/main/VACE/workflows
