#!/bin/bash
#download text encoder
echo "download text encoder"
wget -nv -O /workspace/ComfyUI/models/text_encoders/umt5_xxl_fp8_e4m3fn_scaled.safetensors https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/text_encoders/umt5_xxl_fp8_e4m3fn_scaled.safetensors
sleep 1
#download VAE encoder
echo "download VAE encoder"
wget -nv -O /workspace/ComfyUI/models/vae/wan_2.1_vae.safetensors https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/vae/wan_2.1_vae.safetensors
sleep 2
echo "download WAN VACE model"
#download WAN VACE model
wget -nv -O /workspace/ComfyUI/models/diffusion_models/VACE-Wan2.1-1.3B-Preview.safetensors https://huggingface.co/ali-vilab/VACE-Wan2.1-1.3B-Preview/resolve/main/diffusion_pytorch_model.safetensors
sleep 1
