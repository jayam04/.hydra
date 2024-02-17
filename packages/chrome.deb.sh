#!/bin/bash

filepath="/tmp/chrome.deb"

# Download Chrome
curl -o $filepath -L "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"

# Install Chrome
sudo apt install $filepath
