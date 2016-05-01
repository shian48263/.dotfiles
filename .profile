### rbenv ###
eval "$(rbenv init -)"

### pyenv ###
if which pyenv > /dev/null; then
  eval "$(pyenv init -)";
fi

### nvm ###
export NVM_DIR=~/.nvm
source "$(brew --prefix nvm)/nvm.sh"

### jEnv ###
if which jenv > /dev/null; then
  eval "$(jenv init -)";
fi

### Docker ###
# eval "$(docker-machine env default)"

### PATH ###
export PATH=~/.anaconda/bin:$PATH
export PATH=~/.local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/bin:$PATH
