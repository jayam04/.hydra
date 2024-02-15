#!/bin/bash

release_filepath="/tmp/flutter-releases.json"

# Download release json
curl -o $release_filepath https://storage.googleapis.com/flutter_infra_release/releases/releases_linux.json

# Extract the version of the first stable channel using jq
stable_version=$(jq -r '.releases[] | select(.channel == "stable") | .version' "$release_filepath" | head -n 1)

echo "First stable channel version: $stable_version"
filepath="/tmp/flutter-${stable_version}.tar.xz"

# Download tarfile with stable version
curl -o $filepath -L "https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_${stable_version}-stable.tar.xz"

# TODO: tmp
HYDRA_APPLICATIONS_FOLDER="$HOME/Applications"
mkdir -p $HYDRA_APPLICATIONS_FOLDER
HYDRARC=$HOME/.hydra/hydrarc

# Extract the tarball to Applications folder
tar -xf $filepath -C $HYDRA_APPLICATIONS_FOLDER

# TODO: update to use hydra-path-add once script is complete
# Add path to specific config file using hydra-add-path
echo "# flutter-${stable_version}" >> $HYDRARC
echo "export PATH=\$PATH:\$HYDRA_APPLICATIONS_FOLDER/flutter/bin" >> $HYDRARC
echo "" >> $HYDRARC
