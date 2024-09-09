#!/bin/bash -i

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
source ~/.bashrc
nvm install stable
npm install -g pm2
source ~/.bashrc
