#!/bin/bash

# Copy some dotfiles
cp -r .vim* .tmux.conf ~/
mkdir -p ~/.config/i3
cp -r ~/dotfiles/.config/i3/basic_config ~/.config/i3/config

# Install oh-my-zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
cat <<- EOF >> ~/.zshrc
if [ -z ${SSH_CLIENT} ]; then
  POWERLEVEL9K_MODE="nerdfont-complete"
else
  POWERLEVEL9K_MODE="default"
fi

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator battery time status history context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

POWERLEVEL9K_BATTERY_STAGES=('' '')
POWERLEVEL9K_BATTERY_VERBOSE=false
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
ZSH_THEME="powerlevel10k/powerlevel10k"

if find /usr/share/terminfo -type f | grep xterm-256color > /dev/null; then
    export TERM=xterm-256color
else
    export TERM=xterm
fi

export LD_LIBRARY_PATH=~/lib:${LD_LIBRARY_PATH}
export PERL5LIB=~/lib/perl:${PERL5LIB}
export GOPATH=${HOME}/go:${HOME}/work/go
export PATH=~/bin:${HOME}/go/bin:/usr/local/bin:${PATH}
EOF

