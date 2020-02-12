### bash

## shortcuts
alias a='sudo apt'
alias c='clear'  # clear screen
alias g='grep'
alias h='history'
alias i='sudo apt install'
alias k='kill'
alias s='sudo'
alias t='top'
alias u='sudo apt update'
alias P="PS1='$ '"  # minimize the default shell prompt
alias ll='ls -lah'
alias su='sudo -i'
alias sz='sudo du -sbh'  # size

## default behaviour redefinition
alias cp='cp -i'  # confirmation
alias ln='ln -i'  # ^^
alias mv='mv -i'  # ^^
alias rm='rm -I --preserve-root'  # do not delete / or prompt if deleting more than 3 files at a time
alias diff='colordiff'  # install colordiff =)
alias mkdir='mkdir -pv'  # create parent dirs on demand
alias reboot='sudo reboot'

## cd
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'

## date/time
alias now='date +"%T"'
alias T='date +"%T"'
alias today='date +"%Y%m%d"'
alias D='date +"%Y%m%d"'

## useful custom commands
alias copy='xsel -ib'  # usage: ... | copy


### programming languages

## python
alias p='python3'
alias p3='python3'
alias piu='pip3 install --user'

## r-lang
alias r='Rscript'
alias R='Rscript'


### other

## jupyter notebook
alias jp='jupyter notebook'

## tensorboard
alias tb='tensorboard --logdir'

## virtual environment
alias v='source .venv/bin/activate'
alias dv='deactivate'

## git
alias ga='git add'
alias gb='git branch'
alias gba='git branch -a'
alias gc='git commit'
alias gcm='git commit -m'
alias gch='git checkout'
alias gcb='git checkout -b'
alias gcl='git clean'
alias gl='git log --oneline --graph --decorate'
alias gL='git log -p'
alias gs='git status'
alias gd='diff --color-words --ws-error-highlight=new,old'
alias gds='diff --staged --ws-error-highlight=new,old'
alias gdt='git difftool'
alias gm='git merge'
alias gmt='git mergetool'
alias gdiff='git diff'
alias gpull='git pull'
alias gpush='git push'


## docker
alias d='docker'
alias db='docker build'
alias dl='docker logs'
alias dm='docker-machine'
alias dcp='docker cp'
alias dps='docker ps'
alias drm='docker rm'
alias drun='docker run'
alias dtop='docker top'

## nvidia-docker
alias nd='nvidia-docker'
alias ndrun='nvidia-docker run'

## nvidia utils
alias ns='nvidia-smi'
alias nsl='nvidia-smi --loop-ms=200'  # loop nvidia-smi at 200 ms rate
