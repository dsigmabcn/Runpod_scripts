#!/bin/bash
# clonse basic repos
echo "clone repos"
git -C /workspace/ComfyUI/custom_nodes clone https://github.com/kijai/ComfyUI-KJNodes.git
sleep 1
git -C /workspace/ComfyUI/custom_nodes clone https://github.com/Kosinkadink/ComfyUI-VideoHelperSuite.git
sleep 1
git -C /workspace/ComfyUI/custom_nodes clone https://github.com/ltdrdata/ComfyUI-Impact-Pack.git
sleep 1
git -C /workspace/ComfyUI/custom_nodes clone https://github.com/1038lab/ComfyUI-JoyCaption.git
sleep 1
git -C /workspace/ComfyUI/custom_nodes clone https://github.com/o-l-l-i/ComfyUI-Olm-DragCrop.git 
sleep 1


source /workspace/ComfyUI/venv/bin/activate
#install requirements for each of the repositories
echo "install requirements of repositories"
pip install -r /workspace/ComfyUI/custom_nodes/ComfyUI-KJNodes/requirements.txt
sleep 1
pip install -r /workspace/ComfyUI/custom_nodes/ComfyUI-VideoHelperSuite/requirements.txt
sleep 1
pip install -r /workspace/ComfyUI/custom_nodes/ComfyUI-Impact-Pack/requirements.txt
sleep 1
pip install -r /workspace/ComfyUI/custom_nodes/ComfyUI-JoyCaption/requirements.txt
sleep 1
pip install -r /workspace/ComfyUI/custom_nodes/ComfyUI-Olm-DragCrop/requirements.txt
sleep 1



