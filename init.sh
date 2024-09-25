#!/bin/bash -i
apt update
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
source ~/.bashrc
nvm install stable
npm install -g pm2
apt-get install nano
pip install gdown
apt-get update && apt-get install ffmpeg libsm6 libxext6 -y
cd /workspace && git clone https://github.com/comfyanonymous/ComfyUI.git
cd ComfyUI && git reset --hard 9f4daca
pip install -r requirements.txt
pm2 start --name comfy "python3 main.py --port 3001 --listen"