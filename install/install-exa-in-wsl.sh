#!/bin/bash

# install libgcc-s1
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt update
sudo apt --fix-broken install

# install exa
wget http://archive.ubuntu.com/ubuntu/pool/universe/r/rust-exa/exa_0.9.0-4_amd64.deb
sudo apt-get install ./exa_0.9.0-4_amd64.deb

