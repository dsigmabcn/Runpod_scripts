#!/bin/bash
#download text encoder
echo "download text encoder"
wget -nv -O /workspace/ComfyUI/models/text_encoders/umt5_xxl_fp8_e4m3fn_scaled.safetensors https://huggingface.co/Comfy-Org/Wan_2.2_ComfyUI_Repackaged/resolve/main/split_files/text_encoders/umt5_xxl_fp8_e4m3fn_scaled.safetensors
sleep 1
#download VAE encoder
echo "download Wan 2.1 VAE encoder"
wget -nv -O /workspace/ComfyUI/models/vae/wan_2.1_vae.safetensors https://huggingface.co/Comfy-Org/Wan_2.2_ComfyUI_Repackaged/resolve/main/split_files/vae/wan_2.1_vae.safetensors
sleep 2
echo "download Wan 2.2 VAE encoder"
wget -nv -O /workspace/ComfyUI/models/vae/wan2.2_vae.safetensors https://huggingface.co/Comfy-Org/Wan_2.2_ComfyUI_Repackaged/resolve/main/split_files/vae/wan2.2_vae.safetensors
sleep 2
echo "download WAN2.2 5 Billion TI2V model"
#download WAN 2.2 small models
wget -nv -O /workspace/ComfyUI/models/diffusion_models/wan2.2_ti2v_5B_fp16.safetensors https://huggingface.co/Comfy-Org/Wan_2.2_ComfyUI_Repackaged/resolve/main/split_files/diffusion_models/wan2.2_ti2v_5B_fp16.safetensors
sleep 1
