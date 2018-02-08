## general shortcuts
alias a='sudo apt-get'
alias c='clear' # clear screen
alias df='df -H'
alias du='s du -sbh' # size
alias g='grep'
alias h='history'
alias ins='a install'
alias i='ins'
alias j='jobs -l'
alias k='kill'
alias ll='ls -lah'
alias s='sudo'
alias su='sudo -i'
alias sz='du'
alias reboot='s reboot'
alias root='sudo -i'

## python
alias p='python'
alias p2='p'
alias py='p'
alias py2='p'
alias p3='python3'
alias py3='p3'
alias jp='jupyter notebook'

## other programming languages
alias r='Rscript'

## cd
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

## default behaviour redefinition
alias mkdir='mkdir -pv' # create parent dirs on demand
alias diff='colordiff' # install colordiff =)

## new commands
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'

## safety
alias rm='rm -I --preserve-root' # do not delete / or prompt if deleting more than 3 files at a time
alias mv='mv -i' # confirmation
alias cp='cp -i' # ^^
alias ln='ln -i' # ^^

## git
alias ga='git add'
alias gc='git commit -m'
alias gd='git diff'
alias gs='git status'
alias gl='git log'
alias gpull='git pull'
alias pull='git pull'
alias gpush='git push'
alias push='git push'

## gpu
alias ns='nvidia-smi'
alias nsl='nvidia-smi -lms'

## custom scripts
alias hide-icons='gsettings set org.gnome.desktop.background show-desktop-icons false'
alias show-icons='gsettings set org.gnome.desktop.background show-desktop-icons true'
alias peek='PEEK_POSTPROCESSOR=gifski peek'
alias init-cuda='sudo ~/NVIDIA_CUDA-8.0_Samples/1_Utilities/deviceQuery/deviceQuery'
alias rm-crash='sudo rm -rf /var/crash/*'
alias v='source .venv/bin/activate'
