export PATH=$HOME/bin:/opt/local/bin:/opt/local/sbin:$PATH

export LANG=en_US.UTF-8
export BLOCKSIZE=K
export EDITOR=vim
export PAGER=less

alias h='fc -l'
alias j='jobs'
alias m=$PAGER
alias e=$EDITOR
alias g='egrep -i'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias vim='vim -o'

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

if [ "$TERM" != "dumb" ] && [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
else
    alias ls='ls -G --color'
    export LSCOLORS="Exfxcxdxbxegedabagacad"
fi

alias ls='ls -hFGA'
alias ll='ls -l'
alias la='ls -l'
alias l='ls'

alias t='tmux'
alias tl='tmux ls'
alias ta='tmux attach'
alias t0='tmux attach -t 0'
alias t1='tmux attach -t 1'
alias t2='tmux attach -t 2'

# git utils
alias gs='git status'
alias gc='git commit'
alias ga='git add'
alias gb='git branch'
alias go='git checkout'
alias gi='git ci'
alias gd='git di'
alias gdp='git diff HEAD^'
alias gds='git di --staged'
alias gm='git merge --no-ff'
alias gs='git st'
alias gl='git lol'
alias gpf='git pull --ff-only'
alias gpr='git pull --rebase'
alias gt='git tag'
alias gr='git remote -v'
alias gh='git hist'
alias gf='git fetch'
alias gfp='git fetch --prune'
alias grh='git reset --hard'
alias grc='git rebase --continue'
alias gra='git rebase --abort'

# git prompt & completion
if [ -f ~/configs/git-prompt.sh ]; then
    . ~/configs/git-prompt.sh
fi

if [ -f ~/configs/git-completion.bash ]; then
    . ~/configs/git-completion.bash
fi

# git-enabled prompt
function prompt {
  local RESET="\[\033[00m\]"
  local BLACK="\[\033[0;30m\]"
  local BLACKBOLD="\[\033[1;30m\]"
  local RED="\[\033[0;31m\]"
  local REDBOLD="\[\033[1;31m\]"
  local GREEN="\[\033[0;32m\]"
  local GREENBOLD="\[\033[1;32m\]"
  local YELLOW="\[\033[0;33m\]"
  local YELLOWBOLD="\[\033[1;33m\]"
  local BLUE="\[\033[0;34m\]"
  local BLUEBOLD="\[\033[1;34m\]"
  local PURPLE="\[\033[0;35m\]"
  local PURPLEBOLD="\[\033[1;35m\]"
  local CYAN="\[\033[0;36m\]"
  local CYANBOLD="\[\033[1;36m\]"
  local WHITE="\[\033[0;37m\]"
  local WHITEBOLD="\[\033[1;37m\]"
  local SMILEY="$WHITE:)$RESET"
  local FROWNY="$RED:($RESET"
  local SELECT="if [ \$? = 0 ]; then echo \"$SMILEY\"; else echo \"$FROWNY\"; fi"

  local IDENTITY="$GREEN""local"

  if [ -n "$SSH_CLIENT" ]; then
    IDENTITY="$GREEN\u$WHITE at $RED\h $WHITE(ssh)"
  fi

  # \u = username
  # \h = host
  # \t = time
  export PS1="\n$BLACK[\t] $IDENTITY$RESET:$BLUE\w$PURPLE\$(__git_ps1) $RESET\n\\$ "
}

prompt

# do not expand paths on tab
_expand()
{
    return 0;
}

# make alias
if [[ `which gmake` != '' ]]; then
    alias make='gmake'
else
    alias gmake='make'
fi

# .profile utils
alias vp='vim ~/.profile'
alias sp='source ~/.profile'
