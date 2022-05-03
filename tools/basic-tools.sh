#!/bin/bash

sudo apt install -y silversearcher-ag \
	fasd;

if [ -f ~/.bashrc ]; then
	echo "eval \"$(fasd --init auto)\"" >> ~/.bashrc;
	source ~/.bashrc;
fi

if [ -f ~/.zshrc ]; then
	echo "eval \"$(fasd --init auto)\"" >> ~/.zshrc
	source ~/.bashrc;
fi

