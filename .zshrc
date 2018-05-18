alias ratom="ssh -R 52698:localhost:52698"
alias ll="ls -la"

export LD_LIBRARY_PATH=~/lib:${LD_LIBRARY_PATH}
export PERL5LIB=~/lib/perl:${PERL5LIB}
export GOPATH=${HOME}/go:${HOME}/work/go
export PATH=~/bin:${HOME}/go/bin:/usr/local/bin:${PATH}

if [[ "$(uname)" == "Linux" ]]; then
  export LS_OPTIONS="--color"
fi

if [[ "$(uname)" == "Darwin" ]]; then
  export DARWIN_ENV=1
  alias ls="ls -G"
fi

if [ ! -f ~/bin/antigen.zsh ]; then
  mkdir -p ~/bin
  curl -L git.io/antigen > ~/bin/antigen.zsh
fi

source ~/bin/antigen.zsh

antigen use oh-my-zsh
antigen bundle git

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

antigen theme bhilburn/powerlevel9k
