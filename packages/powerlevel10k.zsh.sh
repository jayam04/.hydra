#!/bin/bash

# Install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $HYDRA_APPLICATIONS_FOLDER/powerlevel10k

# TODO: Update to use hydra add path
echo 'source $HYDRA_APPLICATIONS_FOLDER/powerlevel10k/powerlevel10k.zsh-theme' >> $HYDRARC
