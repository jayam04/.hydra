#!/bin/bash

filepath="/tmp/megasync.deb"

# Download and Install latest version of MEGAsync
curl -L -o $filepath "https://mega.nz/linux/repo/xUbuntu_22.04/amd64/megasync-xUbuntu_22.04_amd64.deb"
sudo apt install $filepath
