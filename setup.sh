#!/bin/bash

# Download Hyper
wget -O /tmp/hyper.deb https://releases.hyper.is/download/deb
sudo dpkg -i /tmp/hyper.deb

git clone https://github.com/xetamus/dotfiles ~/dotfiles

# Copy some dotfiles
cp ~/dotfiles/.zshrc ~/dotfiles/.hyper.js ~/dotfiles/.tmux.conf ~/
mkdir -p ~/.config/i3
cp -r ~/dotfiles/.config/i3/basic_config ~/.config/i3/config

# Copy fonts
mkdir -p ~/.fonts
cp -r ~/dotfiles/fonts/* ~/.fonts

# Clean up
rm -rf ~/dotfiles
