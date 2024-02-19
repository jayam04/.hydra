#!/bin/bash

# Change working directory
cd /tmp

# Download and extract tar.gz
wget https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
zcat <install-tl-unx.tar.gz | tar xf -

# Install with provided arguments
cd install-tl-*
sudo perl ./install-tl --no-interaction

# Get year of texlive
# TODO: use script command to find year
YEAR=2024

# Add Path
# TODO: use hydra-path-add when available
echo "# texlive" >> $HYDRARC
echo "export PATH=\$PATH:/usr/local/textlive/$YEAR/bin/linux" >> $HYDRARC
echo "" >> $HYDRARC
