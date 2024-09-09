#!/bin/bash -i

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
# Force .bashrc
source ~/.bashrc
nvm install stable
npm install -g pm2
