### ~/.profile ###
if [ -f ~/.profile ]; then
  source ~/.profile;
fi

### ~/.environment ###
if [ -f ~/.environment ]; then
  source ~/.environment;
fi

### ~/.bashrc ###
if [ -f ~/.bashrc ]; then
  source ~/.bashrc;
fi

### ~/.aliases ###
if [ -f ~/.aliases ]; then
  source ~/.aliases;
fi
