#!/bin/bash

sudo apt-get update
sudo apt install -y git || exit 1;

# add config files
cp .git* ~;

# add aliases
cp git-aliases ~/.gitrc
echo "source ~/.gitrc" >> ~/.bashrc
source ~/.bashrc

# generate ssh keys
ssh-keygen -t rsa;
