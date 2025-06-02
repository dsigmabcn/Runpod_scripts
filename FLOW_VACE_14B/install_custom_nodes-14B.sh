#!/bin/bash
# clonse basic repos
echo "clone repos"
git -C /workspace/ComfyUI/custom_nodes clone https://github.com/kijai/ComfyUI-KJNodes.git
sleep 1
git -C /workspace/ComfyUI/custom_nodes clone https://github.com/Kosinkadink/ComfyUI-VideoHelperSuite.git
sleep 1
git -C /workspace/ComfyUI/custom_nodes clone https://github.com/Fannovel16/comfyui_controlnet_aux.git
sleep 1
git -C /workspace/ComfyUI/custom_nodes clone https://github.com/kijai/ComfyUI-Florence2.git
sleep 1
git -C /workspace/ComfyUI/custom_nodes clone https://github.com/kijai/ComfyUI-DepthAnythingV2.git
sleep 1
git -C /workspace/ComfyUI/custom_nodes clone https://github.com/1038lab/ComfyUI-RMBG.git
sleep 1
git -C /workspace/ComfyUI/custom_nodes clone https://github.com/dsigmabcn/ComfyUI-disty-Flow.git
sleep 1

source /workspace/ComfyUI/venv/bin/activate
#install requirements for each of the repositories
echo "install requirements of repos"
pip install -r /workspace/ComfyUI/custom_nodes/ComfyUI-KJNodes/requirements.txt
sleep 1
pip install -r /workspace/ComfyUI/custom_nodes/ComfyUI-VideoHelperSuite/requirements.txt
sleep 1
pip install -r /workspace/ComfyUI/custom_nodes/comfyui_controlnet_aux/requirements.txt
sleep 1
pip install -r /workspace/ComfyUI/custom_nodes/ComfyUI-Florence2/requirements.txt
sleep 1
pip install -r /workspace/ComfyUI/custom_nodes/ComfyUI-DepthAnythingV2/requirements.txt
sleep 1
pip install -r /workspace/ComfyUI/custom_nodes/ComfyUI-RMBG/requirements.txt
sleep 1



