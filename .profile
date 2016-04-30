### PATH ###
export PATH=~/.miniconda3/bin:$PATH
export PATH=~/.local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/bin:$PATH

### Docker ###
# eval "$(docker-machine env default)"

### jEnv ###
if which jenv > /dev/null; then
  eval "$(jenv init -)";
fi

### nvm ###
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

### pyenv ###
if which pyenv > /dev/null; then
  eval "$(pyenv init -)";
fi

### rbenv ###
eval "$(rbenv init -)"
