#!/bin/bash

# Download Hyper
wget -O /tmp/hyper.deb https://releases.hyper.is/download/deb
sudo dpkg -i /tmp/hyper.deb

# Copy fonts
mkdir -p ~/.fonts
cp -r ~/dotfiles/fonts/* ~/.fonts

# Copy some dotfiles
git clone https://github.com/xetamus/dotfiles ~/dotfiles
cp ~/dotfiles/.zshrc ~/dotfiles/.hyper.js ~/dotfiles/.tmux.conf ~/
mkdir -p ~/.config/i3
cp -r ~/dotfiles/.config/i3/basic_config ~/.config/i3/config

# Clean up
rm -rf ~/dotfiles
