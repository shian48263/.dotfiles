### PATH ###
export PATH=/usr/local/sbin:$PATH
export PATH=~/.local/bin:$PATH

### Docker ###
# eval "$(docker-machine env default)"

### jEnv ###
if which jenv > /dev/null; then
  eval "$(jenv init -)";
fi

### nvm ###
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

### rbenv ###
eval "$(rbenv init -)"
