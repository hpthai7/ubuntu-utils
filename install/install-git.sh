#!/bin/bash

sudo apt-get update
sudo apt install -y git || exit 1;

# add config files
cp gitconfig ~/.gitconfig;

# add aliases
cp git-aliases ~/.gitrc
echo "source ~/.gitrc" >> ~/.bashrc
echo "source ~/.gitrc" >> ~/.zshrc
source ~/.bashrc
source ~/.zshrc

# add k8s aliases
cp k8s-aliases ~/.kuberc
echo "source ~/.kuberc" >> ~/.bashrc
echo "source ~/.kuberc" >> ~/.zshrc
source ~/.bashrc
source ~/.zshrc

# generate ssh keys
ssh-keygen -t rsa;
