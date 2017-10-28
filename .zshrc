alias ratom="ssh -R 52698:localhost:52698"
alias ll="ls -la"

export GOPATH=${HOME}/go:/Users/samin/work/go
export PATH=~/bin:${HOME}/go/bin:${PATH}

if [[ "$(uname)" == "Linux" ]]; then
  export LS_OPTIONS="--color"
fi

if [[ "$(uname)" == "Darwin" ]]; then
  alias ls="ls -G"
fi

if [ ! -f ~/bin/antigen.zsh ]; then
  mkdir -p ~/bin
  curl -L git.io/antigen > ~/bin/antigen.zsh
fi

export POWERLEVEL9K_MODE=nerdfont-complete
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator status history vcs dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(context battery time)
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

source ~/bin/antigen.zsh

antigen use oh-my-zsh
antigen bundle git
antigen theme bhilburn/powerlevel9k
antigen apply