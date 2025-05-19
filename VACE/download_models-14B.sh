#!/bin/bash
#download text encoder
echo "download text encoder"
wget -nv -O /workspace/ComfyUI/models/text_encoders/umt5_xxl_fp8_e4m3fn_scaled.safetensors https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/text_encoders/umt5_xxl_fp8_e4m3fn_scaled.safetensors
sleep 1
#download VAE encoder
echo "download VAE encoder"
wget -nv -O /workspace/ComfyUI/models/vae/wan_2.1_vae.safetensors https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/vae/wan_2.1_vae.safetensors
sleep 2
echo "download WAN VACE model 1.3B"
#download WAN VACE model (1.3B)
wget -nv -O /workspace/ComfyUI/models/diffusion_models/VACE-Wan2.1-1.3B-Preview.safetensors https://huggingface.co/ali-vilab/VACE-Wan2.1-1.3B-Preview/resolve/main/diffusion_pytorch_model.safetensors
sleep 1
#download WAN VACE model (14B)
echo "download WAN VACE model 14B"
wget -nv -O /workspace/ComfyUI/models/diffusion_models/Wan2_1-VACE_module_14B_bf16.safetensors https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/diffusion_models/wan2.1_vace_14B_fp16.safetensors
sleep 1
#download CausVis Lora
echo "download CausVis Lora"
wget -nv -O /workspace/ComfyUI/models/loras/Wan21_CausVid_14B_T2V_lora_rank32.safetensors https://huggingface.co/Kijai/WanVideo_comfy/resolve/main/Wan21_CausVid_14B_T2V_lora_rank32.safetensors
sleep 1