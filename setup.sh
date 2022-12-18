#!/bin/bash

# Copy some dotfiles
cp -r .vim* .tmux.conf ~/
mkdir -p ~/.config/i3
cp -r ~/dotfiles/.config/i3/basic_config ~/.config/i3/config

# Install oh-my-zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

cp .zshrc ~/
exec zsh
