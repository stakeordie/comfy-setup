curl -fsSL https://ollama.com/install.sh | sh
pm2 start --name ollama "ollama serve"
ollama pull llama3.1:latest && ollama pull llava-llama3:latest
## MODELS
## FLUX DEV
cd /workspace/ComfyUI/models/diffusion_models \
&& wget --header="Authorization: Bearer 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" https://huggingface.co/black-forest-labs/FLUX.1-dev/resolve/main/flux1-dev.safetensors
## FLUX VAE
cd /workspace/ComfyUI/models/vae \
&& wget --header="Authorization: Bearer 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" https://huggingface.co/black-forest-labs/FLUX.1-dev/resolve/main/ae.safetensors
## UPSCALE MODELS
cd /workspace/ComfyUI/models/upscale_models/ \
&& gdown https://drive.google.com/uc?id=1Vx4kqcpPKfUpYSFpK_0XRZ7h64nosraW \
&& gdown https://drive.google.com/uc?id=1d3wPbtjFcgCkWAMVFQalOuQHdiNmfc5i
## NODES
cd /workspace/ComfyUI/custom_nodes \
&& git clone https://github.com/ltdrdata/ComfyUI-Impact-Pack.git \
&& cd ComfyUI-Impact-Pack \
&& git reset --hard c3eed09

cd /workspace/ComfyUI/custom_nodes \
&& git clone https://github.com/pythongosssss/ComfyUI-Custom-Scripts.git \
&& cd ComfyUI-Custom-Scripts \
&& git reset --hard 626e001

cd /workspace/ComfyUI/custom_nodes \
&& git clone https://github.com/ssitu/ComfyUI_UltimateSDUpscale.git \
&& cd ComfyUI_UltimateSDUpscale \
&& git reset --hard 70083f5

cd /workspace/ComfyUI/custom_nodes \
&& git clone https://github.com/Suzie1/ComfyUI_Comfyroll_CustomNodes.git \
&& cd ComfyUI_Comfyroll_CustomNodes \
&& git reset --hard d78b780 \
&& pip install -r requirements.txt

cd /workspace/ComfyUI/custom_nodes \
&& git clone https://github.com/evanspearman/ComfyMath.git \
&& cd ComfyMath \
&& git reset --hard 939bb81 \
&& pip install -r requirements.txt

cd /workspace/ComfyUI/custom_nodes \
&& git clone https://github.com/theUpsider/ComfyUI-Logic.git \
&& cd ComfyUI-Logic \
&& git reset --hard 42d4f3d

cd /workspace/ComfyUI/custom_nodes \
&& git clone https://github.com/rgthree/rgthree-comfy.git \
&& cd rgthree-comfy \
&& git reset --hard cae8e2a \
&& pip install -r requirements.txt

cd /workspace/ComfyUI/custom_nodes \
&& git clone https://github.com/cubiq/ComfyUI_essentials.git \
&& cd ComfyUI_essentials \
&& git reset --hard 99aad72 \
&& pip install -r requirements.txt

cd /workspace/ComfyUI/custom_nodes \
&& git clone https://github.com/kijai/ComfyUI-KJNodes.git \
&& cd ComfyUI-KJNodes \
&& git reset --hard 7aa591b \
&& pip install -r requirements.txt

cd /workspace/ComfyUI/custom_nodes \
&& git clone https://github.com/kijai/ComfyUI-Florence2.git \
&& cd ComfyUI-Florence2 \
&& git reset --hard f59d5c3 \
&& pip install -r requirements.txt

cd /workspace/ComfyUI/custom_nodes \
&& git clone https://github.com/kijai/ComfyUI-segment-anything-2.git \
&& cd ComfyUI-segment-anything-2 \
&& git reset --hard 05496ca \
&& pip install -r requirements.txt

cd /workspace/ComfyUI/custom_nodes \
&& git clone https://github.com/chflame163/ComfyUI_LayerStyle.git \
&& cd ComfyUI_LayerStyle \
&& git reset --hard f2f8c16 \
&& pip install -r requirements.txt

cd /workspace/ComfyUI/custom_nodes \
&& git clone https://github.com/stavsap/comfyui-ollama.git \
&& cd comfyui-ollama \
&& git reset --hard 1615b17 \
&& pip install -r requirements.txt

cd /workspace/ComfyUI/custom_nodes \
&& git clone https://github.com/gseth/ControlAltAI-Nodes.git \
&& cd ControlAltAI-Nodes \
&& git reset --hard a3f2070 \