#!/bin/bash

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
# Force .bashrc
exec bash
nvm install stable
npm install -g pm2
