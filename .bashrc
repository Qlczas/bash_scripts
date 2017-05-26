#!/bin/bash

# Path

  export PATH="$PATH:/Applications/DiffMerge.app/Contents/MacOS:~/devtools:$HOME/.fastlane/bin:/usr/local/Cellar/ruby/2.4.1/lib/ruby/gems/2.4.0/gems/jekyll-3.4.3/exe:/usr/local/Cellar/ruby/2.4.1/lib/ruby/gems/2.4.0/gems/bundler-1.14.6/exe:~/Library/Android/sdk/platform-tools"

# Prompt setup and environment colors

#source ~/.git-prompt.sh
#export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

## Git prompt config

  # Set config variables first
   GIT_PROMPT_ONLY_IN_REPO=0

   # GIT_PROMPT_FETCH_REMOTE_STATUS=0   # uncomment to avoid fetching remote status

   # GIT_PROMPT_SHOW_UPSTREAM=1 # uncomment to show upstream tracking branch
   # GIT_PROMPT_SHOW_UNTRACKED_FILES=all # can be no, normal or all; determines counting of untracked files

   # GIT_PROMPT_SHOW_CHANGED_FILES_COUNT=0 # uncomment to avoid printing the number of changed files

   GIT_PROMPT_START="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]"    # uncomment for custom prompt start sequence
   # GIT_PROMPT_END=...      # uncomment for custom prompt end sequence

   # as last entry source the gitprompt script
   # GIT_PROMPT_THEME=Custom # use custom theme specified in file GIT_PROMPT_THEME_FILE (default ~/.git-prompt-colors.sh)
   # GIT_PROMPT_THEME_FILE=~/.git-prompt-colors.sh
   GIT_PROMPT_THEME=Solarized # use theme optimized for solarized color scheme

if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
   __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
   source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

#if [ -f /usr/local/share/gitprompt.sh ]; then
#    . /usr/local/share/gitprompt.sh
#fi

## Git & Git Flow completion

if [ -f ~/.git_completion.sh ]; then
    . ~/.git_completion.sh
fi

if [ -f ~/.git_flow_completion.sh ]; then
    . ~/.git_flow_completion.sh
fi

# Aliases

alias ls='ls -GFh'
