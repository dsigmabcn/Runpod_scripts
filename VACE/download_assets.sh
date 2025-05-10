#!/bin/bash
wget -r -np -nH --cut-dirs=3 -P /workspace/ComfyUI/input https://github.com/dsigmabcn/Runpod_scripts/tree/main/VACE/inputs
mkdir /workspace/ComfyUI/user/default/workflows/VACE
wget -r -np -nH --cut-dirs=3 -P /workspace/ComfyUI/user/default/workflows/VACE https://github.com/dsigmabcn/Runpod_scripts/tree/main/VACE/workflows
