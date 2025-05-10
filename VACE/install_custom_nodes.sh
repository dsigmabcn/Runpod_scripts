#!/bin/bash
# clonse basic repos
echo "clone repos"
git -C /workspace/ComfyUI/custom_nodes clone https://github.com/kijai/ComfyUI-KJNodes.git
git -C /workspace/ComfyUI/custom_nodes clone https://github.com/Kosinkadink/ComfyUI-VideoHelperSuite.git
git -C /workspace/ComfyUI/custom_nodes clone https://github.com/Fannovel16/comfyui_controlnet_aux.git
git -C /workspace/ComfyUI/custom_nodes clone https://github.com/kijai/ComfyUI-Florence2.git
git -C /workspace/ComfyUI/custom_nodes clone https://github.com/kijai/ComfyUI-DepthAnythingV2.git

#install requirements for each of the repositories
echo "install requirements of repors"
pip install -r /workspace/ComfyUI/custom_nodes/ComfyUI-KJNodes/requirements.txt
pip install -r /workspace/ComfyUI/custom_nodes/ComfyUI-VideoHelperSuite/requirements.txt
pip install -r /workspace/ComfyUI/custom_nodes/comfyui_controlnet_aux/requirements.txt
pip install -r /workspace/ComfyUI/custom_nodes/ComfyUI-Florence2/requirements.txt
pip install -r /workspace/ComfyUI/custom_nodes/comfyui-depthanythingv2/requirements.txt




