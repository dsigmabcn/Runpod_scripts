#!/bin/bash

# -- Installation Script ---
# This script handles the full installation of ComfyUI and SAUS, with the necessary custom nodes
# Includes also ComfyUI-RunpodDirect for better Runpod integration.
# It is designed to be run in a Runpod RTX 5090 instance.


# Change to the /workspace directory to ensure all files are downloaded correctly.
cd /workspace

# Download and install ComfyUI using the ComfyUI-Manager script.
echo "Installing ComfyUI and ComfyUI Manager..."
wget https://github.com/ltdrdata/ComfyUI-Manager/raw/main/scripts/install-comfyui-venv-linux.sh -O install-comfyui-venv-linux.sh
chmod +x install-comfyui-venv-linux.sh
./install-comfyui-venv-linux.sh

# Add the --listen flag to the run_gpu.sh script for network access.
echo "Configuring ComfyUI for network access..."
sed -i "$ s/$/ --listen /" /workspace/run_gpu.sh
chmod +x /workspace/run_gpu.sh

# Installing ComfyUI-RunpodDirect.
echo "clone ComfyUI-RunpodDirect"
git -C /workspace/ComfyUI/custom_nodes clone https://github.com/MadiatorLabs/ComfyUI-RunpodDirect.git

# Installing SAUS nodes.
echo "clone ComfyUI-SAUS"
git -C /workspace/ComfyUI/custom_nodes clone https://github.com/dsigmabcn/ComfyUI-SAUS.git
sleep 1

# clone basic repos
echo "clone repos"
git -C /workspace/ComfyUI/custom_nodes clone https://github.com/kijai/ComfyUI-KJNodes.git
sleep 1
git -C /workspace/ComfyUI/custom_nodes clone https://github.com/Fannovel16/comfyui_controlnet_aux.git
sleep 1
git -C /workspace/ComfyUI/custom_nodes clone https://github.com/1038lab/ComfyUI-RMBG.git
sleep 1
git -C /workspace/ComfyUI/custom_nodes clone https://github.com/city96/ComfyUI-GGUF.git
sleep 1
git -C /workspace/ComfyUI/custom_nodes clone https://github.com/dsigmabcn/ComfyUI_essentials.git
sleep 1
git - C /workspace/ComfyUI/custom_nodes clone https://github.com/Kosinkadink/ComfyUI-AnimateDiff-Evolved.git
sleep 1

#install pip packages for each of the repositories
source /workspace/ComfyUI/venv/bin/activate
echo "install requirements of repos"
pip install -r /workspace/ComfyUI/custom_nodes/ComfyUI-KJNodes/requirements.txt
sleep 1
pip install -r /workspace/ComfyUI/custom_nodes/comfyui_controlnet_aux/requirements.txt
sleep 1
pip install -r /workspace/ComfyUI/custom_nodes/ComfyUI-RMBG/requirements.txt
sleep 1
pip install -r /workspace/ComfyUI/custom_nodes/ComfyUI-GGUF/requirements.txt
sleep 1
pip install -r /workspace/ComfyUI/custom_nodes/ComfyUI_essentials/requirements.txt
sleep 1


#install triton and sage attention
pip install triton
pip install sage-attention


# Clean up the installation scripts.
echo "Cleaning up..."
rm install_script.sh run_cpu.sh install-comfyui-venv-linux.sh

# Start the main Runpod service and the ComfyUI service in the background.
echo "Starting ComfyUI and Runpod services..."
(/start.sh & /workspace/run_gpu.sh)
