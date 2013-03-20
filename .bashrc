alias ls='ls -hGF'
alias ll='ls -l'
alias la='ls -lA'
alias l='ls'

export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]$(__git_ps1 " (%s)")\$ '

# git utils
alias gs='git status'
alias gc='git commit'
alias ga='git add'
alias gb='git branch'
alias go='git checkout'
alias gi='git ci'
alias gd='git di'
alias gds='git di --staged'
alias gm='git merge --no-ff'
alias gs='git st'
alias gl='git lol'
alias gp='git pull --rebase'
alias gt='git tag'
alias gr='git remote -v'
alias gh='git hist'
alias gf='git fetch'
alias gfp='git fetch --prune'

# .profile utils
alias vp='vim ~/.profile'
alias sp='source ~/.profile'
