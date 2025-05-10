#!/bin/bash
#download text encoder
echo "download text encoder"
wget -O /workspace/ComfyUI/models/text_encoders/umt5_xxl_fp8_e4m3fn_scaled.safetensors https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/text_encoders/umt5_xxl_fp8_e4m3fn_scaled.safetensors
#download VAE encoder
echo "download VAE encoder"
wget -O /workspace/ComfyUI/models/vae/wan_2.1_vae.safetensors https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/vae/wan_2.1_vae.safetensors
echo "download WAN VACE model"
#download WAN VACE model
wget -O /workspace/ComfyUI/models/diffusion_models/VACE-Wan2.1-1.3B-Preview.safetensors https://huggingface.co/ali-vilab/VACE-Wan2.1-1.3B-Preview/resolve/main/diffusion_pytorch_model.safetensors


