# Bash
export PATH=/usr/local/sbin:$PATH
export PATH=~/.bin:$PATH
export VISUAL=vim
export EDITOR="$VISUAL"
export HISTSIZE=
export HISTFILESIZE=

# dircolors-solarized
alias ls='gls --color=auto'
eval $(gdircolors ~/.dircolors-solarized/dircolors.ansi-dark)

# Docker
# eval "$(docker-machine env default)"

# Environment variables
if [ -f ~/.env ]; then
  source ~/.env;
fi

# Homebrew
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  source $(brew --prefix)/etc/bash_completion
fi

# jEnv
if which jenv > /dev/null; then eval "$(jenv init -)"; fi

# nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# rbenv
eval "$(rbenv init -)"

# Vim
# set -o vi
