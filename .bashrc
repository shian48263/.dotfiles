### Environment variables ###
export HISTSIZE=
export HISTFILESIZE=
export HOMEBREW_NO_ANALYTICS=1
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export VISUAL=vim
export EDITOR="$VISUAL"

### bash-completion ###
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  source $(brew --prefix)/etc/bash_completion
fi

### bash-git-prompt ###
if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
  # Set config variables first
  export GIT_PROMPT_ONLY_IN_REPO=1

  # export GIT_PROMPT_FETCH_REMOTE_STATUS=0   # uncomment to avoid fetching remote status

  export GIT_PROMPT_SHOW_UPSTREAM=1 # uncomment to show upstream tracking branch
  export GIT_PROMPT_SHOW_UNTRACKED_FILES=all # can be no, normal or all; determines counting of untracked files

  # export GIT_PROMPT_STATUS_COMMAND=gitstatus_pre-1.7.10.sh # uncomment to support Git older than 1.7.10

  # export GIT_PROMPT_START=...    # uncomment for custom prompt start sequence
  # export GIT_PROMPT_END=...      # uncomment for custom prompt end sequence

  # as last entry source the gitprompt script
  # export GIT_PROMPT_THEME=Custom # use custom .git-prompt-colors.sh
  export GIT_PROMPT_THEME=Solarized # use theme optimized for solarized color scheme
  # source ~/.bash-git-prompt/gitprompt.sh

  # export GIT_PROMPT_THEME=Default
  source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi

### dircolors-solarized ###
eval $(gdircolors ~/.dircolors)

### homebrew-command-not-found ###
if brew command command-not-found-init > /dev/null; then
  eval "$(brew command-not-found-init)"
fi

### Vim ###
# set -o vi
