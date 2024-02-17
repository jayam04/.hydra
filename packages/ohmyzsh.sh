#!/bin/bash

# Install Zsh
sudo apt install zsh

# Install OhMyZsh
cd /tmp
git clone https://github.com/ohmyzsh/ohmyzsh.git
bash /tmp/ohmyzsh/tools/install.sh
