echo "--> Loading .profile"

# macports
alias portup="sudo port selfupdate && sudo port upgrade outdated"
export PATH=$HOME/bin:/opt/local/bin:/opt/local/sbin:$PATH

export LANG=en_US.UTF-8
export BLOCKSIZE=K
export EDITOR=vim
export PAGER=less

alias h='fc -l'
alias j='jobs'
alias m=$PAGER
alias e=$EDITOR
alias md='mkdir -p'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ~='cd ~'
alias -- -='cd -'


# Programs
alias vim='vim -o'
alias cssc='csscomb -c ~/confgis/.csscomb.json '
alias f='open -a Finder'

if [ -f "$HOME/.extrarc" ]; then
    . "$HOME/.extrarc"
fi

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

alias please=sudo

escape-svg () {
    echo "console.log(escape('`cat $1`'))" | node    
}

# tmux
alias t='tmux'
alias tl='tmux ls'
alias ta='tmux attach'
alias t0='tmux attach -t 0'
alias t1='tmux attach -t 1'
alias t2='tmux attach -t 2'

# Git utils
alias gs='git status'
alias ga='git add'
alias gb='git branch'
alias gt='git tag'
alias gi='git commit'
alias gm='git merge --no-ff'

alias gd='git diff'
alias gdp='git diff HEAD^'
alias gds='git diff --staged'

alias go='git checkout'
alias god='git checkout dev'
alias gom='git checkout master'

alias gl='git lol'
alias gh='git hist'

# Git remotes
alias gr='git remote -v'
alias gf='git fetch'
alias gfp='git fetch --prune'
alias grh='git reset --hard'
alias grho='git reset --hard origin/`gbc`'
alias gpf='git pull --ff-only'
alias gpr='git pull --rebase'

alias gpc='git push -u origin `gbc`' # git-push-current
alias gpcf='git push -u origin +`gbc`' # git-push-current-force

# Rebase & Cherry-picking
alias grc='git rebase --continue'
alias gra='git rebase --abort'
alias gcp='git cherry-pick '
alias gcpa='git cherry-pick --abort'

alias gud='god && gpf' # git-update-dev
alias grd='git rebase dev'

alias gsh='git show '
alias ghs='git hash'
alias gbc='git rev-parse --abbrev-ref HEAD' # git-branch-current
alias gsd='git show -s --format="%ci"' # git-show-date
# show merge-base from dev
alias grf='git merge-base dev `gbc`' # WAT?

# Execute on branch
# updates dev and then rebases current branch
alias gudc='god && gpf && go - && grd'

# defunkt hub alias
if [[ `which hub` != '' ]]; then
    alias git='hub'
    alias gbr='git browse'
    alias gbri='git browse -- issues'
    alias gbrn='git browse -- network'
fi

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

  local IDENTITY="$GREEN""local"

  if [ -n "$SSH_CLIENT" ]; then
    IDENTITY="$GREEN\u$WHITE at $RED\h $WHITE(ssh)"
  fi

  # \u = username
  # \h = host
  # \t = time
  export PS1="\n$CYAN[\t] $IDENTITY$RESET:$BLUE\w$PURPLE\$(__git_ps1) $RESET\n\\$ "
}

prompt

# npm 
export PATH="./node_modules/.bin:$PATH"

alias npmp="sudo npm publish"
alias npma="sudo npm adduser"
alias npmi="sudo npm install"
alias npmg="sudo npm install -g"
alias npmu="sudo npm update"
alias npmr="sudo npm uninstall"
alias npmrg="sudo npm uninstall -g"

# do not expand paths like '~/' on tab
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
