pip install --upgrade onnxruntime
pip install --upgrade onnxruntime-gpu
pip install --upgrade onnxruntime-directml
pip install --upgrade onnxruntime-openvino

cd /workspace/ComfyUI/models/diffusion_models \
&& wget 'https://civitai.com/api/download/models/252914?type=Model&format=SafeTensor&size=pruned&fp=fp16' -O DreamShaper_8LCM.safetensors \
&& cp /workspace/ComfyUI/models/diffusion_models/DreamShaper_8LCM.safetensors /workspace/ComfyUI/models/checkpoints/DreamShaper_8LCM.safetensors

cd /workspace/ComfyUI/models/clip_vision/ \
&& wget https://huggingface.co/h94/IP-Adapter/resolve/main/models/image_encoder/model.safetensors -O CLIP-ViT-H-14-laion2B-s32B-b79K.safetensors \
&& wget https://huggingface.co/h94/IP-Adapter/resolve/main/sdxl_models/image_encoder/model.safetensors -O CLIP-ViT-bigG-14-laion2B-39B-b160k.safetensors \
&& wget https://huggingface.co/Kwai-Kolors/Kolors-IP-Adapter-Plus/resolve/main/image_encoder/pytorch_model.bin -O clip-vit-large-patch14-336.bin

cd /workspace/ComfyUI/models/ \
&& mkdir ipadapter && cd ipadapter \
&& wget - https://huggingface.co/h94/IP-Adapter/resolve/main/models/ip-adapter_sd15.safetensors \
    https://huggingface.co/h94/IP-Adapter/resolve/main/models/ip-adapter_sd15_light_v11.bin \
    https://huggingface.co/h94/IP-Adapter/resolve/main/models/ip-adapter-plus_sd15.safetensors \
    https://huggingface.co/h94/IP-Adapter/resolve/main/models/ip-adapter-plus-face_sd15.safetensors \
    https://huggingface.co/h94/IP-Adapter/resolve/main/models/ip-adapter-full-face_sd15.safetensors \
    https://huggingface.co/h94/IP-Adapter/resolve/main/models/ip-adapter_sd15_vit-G.safetensors \
    https://huggingface.co/h94/IP-Adapter/resolve/main/sdxl_models/ip-adapter_sdxl_vit-h.safetensors \
    https://huggingface.co/h94/IP-Adapter/resolve/main/sdxl_models/ip-adapter-plus_sdxl_vit-h.safetensors \
    https://huggingface.co/h94/IP-Adapter/resolve/main/sdxl_models/ip-adapter-plus-face_sdxl_vit-h.safetensors \
    https://huggingface.co/h94/IP-Adapter/resolve/main/sdxl_models/ip-adapter_sdxl.safetensors


cd /workspace/ComfyUI/models/loras/ \
&& wget https://huggingface.co/wangfuyun/AnimateLCM/resolve/main/AnimateLCM_sd15_t2v_lora.safetensors -O AnimateLCM_sd15_t2v_lora.safetensors

cd /workspace/ComfyUI/models/animatediff_models/ \
&& wget https://huggingface.co/wangfuyun/AnimateLCM/resolve/main/AnimateLCM_sd15_t2v.ckpt -O AnimateLCM_sd15_t2v.ckpt

cd /workspace/ComfyUI/models/ \
&& mkdir animatediff_motion_lora && cd animatediff_motion_lora \
&& wget https://huggingface.co/guoyww/animatediff/resolve/main/v2_lora_PanLeft.ckpt \
  https://huggingface.co/guoyww/animatediff/resolve/main/v2_lora_PanRight.ckpt \
  https://huggingface.co/guoyww/animatediff/resolve/main/v2_lora_RollingAnticlockwise.ckpt \
  https://huggingface.co/guoyww/animatediff/resolve/main/v2_lora_RollingClockwise.ckpt \
  https://huggingface.co/guoyww/animatediff/resolve/main/v2_lora_TiltDown.ckpt \
  https://huggingface.co/guoyww/animatediff/resolve/main/v2_lora_TiltUp.ckpt \
  https://huggingface.co/guoyww/animatediff/resolve/main/v2_lora_ZoomIn.ckpt \
  https://huggingface.co/guoyww/animatediff/resolve/main/v2_lora_ZoomOut.ckpt

cd /workspace/ComfyUI/models/controlnet/ \
&& wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11f1e_sd15_tile_fp16.safetensors -O control_v11f1e_sd15_tile_fp16.safetensors \
&& wget https://huggingface.co/guoyww/animatediff/resolve/main/v3_sd15_sparsectrl_scribble.ckpt -O v3_sd15_sparsectrl_scribble.ckpt

##NODES

cd /workspace/ComfyUI/custom_nodes \
&& git clone https://github.com/Fannovel16/comfyui_controlnet_aux.git \
&& cd comfyui_controlnet_aux \
&& git reset --hard 302a389 \
&& pip install -r requirements.txt

cd /workspace/ComfyUI/custom_nodes \
&& git clone https://github.com/Fannovel16/ComfyUI-Frame-Interpolation.git \
&& cd ComfyUI-Frame-Interpolation \
&& git reset --hard 483dfe6

cd /workspace/ComfyUI/custom_nodes \
&& git clone https://github.com/pythongosssss/ComfyUI-WD14-Tagger.git \
&& cd ComfyUI-WD14-Tagger \
&& git reset --hard 4f1a857 \
&& pip install -r requirements.txt

cd /workspace/ComfyUI/custom_nodes \
&& git clone https://github.com/cubiq/ComfyUI_IPAdapter_plus.git --recursive\
&& cd ComfyUI_IPAdapter_plus \
&& git reset --hard 20bfeb6

cd /workspace/ComfyUI/custom_nodes \
&& git clone https://github.com/Kosinkadink/ComfyUI-Advanced-ControlNet.git \
&& cd ComfyUI-Advanced-ControlNet \
&& git reset --hard 74d0c56

cd /workspace/ComfyUI/custom_nodes \
&& git clone https://github.com/Kosinkadink/ComfyUI-AnimateDiff-Evolved.git \
&& cd ComfyUI-AnimateDiff-Evolved \
&& git reset --hard 83fe8d4

cd /workspace/ComfyUI/custom_nodes \
&& git clone https://github.com/Kosinkadink/ComfyUI-VideoHelperSuite.git --recursive \
&& cd ComfyUI-VideoHelperSuite \
&& git reset --hard 0376e57 \
&& pip install -r requirements.txt

cd /workspace/ComfyUI/custom_nodes \
&& git clone https://github.com/cubiq/ComfyUI_essentials.git \
&& cd ComfyUI_essentials \
&& git reset --hard 99aad72 \
&& pip install -r requirements.txt

cd /workspace/ComfyUI/custom_nodes \
&& git clone https://github.com/Suzie1/ComfyUI_Comfyroll_CustomNodes.git --recursive \
&& cd ComfyUI_Comfyroll_CustomNodes \
&& git reset --hard d78b780