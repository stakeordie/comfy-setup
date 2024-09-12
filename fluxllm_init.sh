curl -fsSL https://ollama.com/install.sh | sh
pm2 start --nama ollama "ollama serve"
ollama pull llama3.1:latest && ollama pull llava-llama3:latest
## MODELS
##FLUX DEV
cd /workspace/ComfyUI/models/diffusion_models && wget --header="Authorization: Bearer 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" https://huggingface.co/black-forest-labs/FLUX.1-dev/resolve/main/flux1-dev.safetensors
##FLUX VAE
cd /workspace/ComfyUI/models/vae && wget --header="Authorization: Bearer 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" https://huggingface.co/black-forest-labs/FLUX.1-dev/resolve/main/ae.safetensors
## UPSCALE MODELS
cd /workspace/ComfyUI/models/upscale_models/ && gdown https://drive.google.com/uc?id=1Vx4kqcpPKfUpYSFpK_0XRZ7h64nosraW && gdown https://drive.google.com/uc?id=1d3wPbtjFcgCkWAMVFQalOuQHdiNmfc5i
## NODES
cd /workspace/ComfyUI/custom_nodes && git clone https://github.com/ltdrdata/ComfyUI-Impact-Pack.git && cd ComfyUI-Impact-Pack && git reset --hard c3eed09
cd /workspace/ComfyUI/custom_nodes && git clone https://github.com/pythongosssss/ComfyUI-Custom-Scripts.git && cd ComfyUI-Custom-Scripts && git reset --hard 626e001 && pip install -r ComfyUI-Custom-Scripts/requirements.txt