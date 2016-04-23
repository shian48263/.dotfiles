### Environment variables ###
export EDITOR="$VISUAL"
export HISTSIZE=
export HISTFILESIZE=
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export VISUAL=vim

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
