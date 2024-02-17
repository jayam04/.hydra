#!/bin/bash

# Install Zoxide using their script
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash

# Add Zoxide to shell
# TODO: Change to use hydra-add-path
echo "eval \"\$(zoxide init --cmd cd zsh)\"" >> $HYDRARC
