# comfy-setup

## Run

Clone the repo, cd into the directory, and run the following command:

```bash
./init.sh && source ~/.bashrc

cd workspace/ComfyUI

python -m venv venv

pip install -r requirements.txt

pm2 start --name comfymain "python3 main.py --port 3000 --listen"
```
