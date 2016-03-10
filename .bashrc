### Environment variables ###
export VISUAL=vim
export EDITOR="$VISUAL"
export HISTSIZE=
export HISTFILESIZE=

### bash-completion ###
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  source $(brew --prefix)/etc/bash_completion
fi

### dircolors-solarized ###
eval $(gdircolors ~/.dircolors)

### homebrew-command-not-found ###
if brew command command-not-found-init > /dev/null; then
  eval "$(brew command-not-found-init)"
fi

### Vim ###
# set -o vi
