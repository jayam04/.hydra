#!/bin/bash

filepath="/tmp/code.deb"

# Download VS Code
curl -o $filepath -L "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"

# Install VS Code
sudo apt install $filepath
