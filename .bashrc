## locale variables
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"


## CUDA
export PATH=/usr/local/cuda/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH


## customize prompt
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'
}

set_prompt() {
	# colors: https://misc.flogisoft.com/bash/tip_colors_and_formatting
	# hex codes for those colors: https://askubuntu.com/questions/821157/print-a-256-color-test-pattern-in-the-terminal
	# sublime color codes: https://marketplace.visualstudio.com/items?itemName=SuperPaintman.monokai-extended
	
	local _sublime_red="\e[38;5;198m"      # F9 26 72 -> FF 00 87
	local _sublime_orange="\e[38;5;208m"   # FD 91 1F -> FF 87 00
	local _sublime_yellow="\e[38;5;222m"   # E6 DB 74 -> FF D7 87
	local _sublime_yellow2="\e[38;5;228m"  # E6 DB 74 -> FF FF 87
	local _sublime_green="\e[38;5;155m"    # A6 E2 2E -> AF FF 5F
	local _sublime_blue="\e[38;5;81m"      # 66 D9 EF -> 5F D7 FF
	local _sublime_purple="\e[38;5;141m"   # AE 81 FF -> AF 87 FF		

	local _user_host_color="\[\033[38;5;155m\]"  # default: "\[\033[01;32m\]"
	local _dir_color="\[\033[38;5;141m\]"  # default: "\[\033[01;34m\]"
	local _git_branch_color="\[\033[38;5;198m\]"
	local _white="\[\033[00m\]"

	local _color_prefix='\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}'

	local color_prompt=
	if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
    # We have color support; assume it's compliant with Ecma-48
    # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
    # a case would tend to support setf rather than setaf.)
	    color_prompt=yes
	fi

	if [ "$color_prompt" = yes ]; then
		PS1="${_color_prefix}\
${_user_host_color}\u@\h${_white} \
${_dir_color}\w${_white}\
${_git_branch_color}$(parse_git_branch)${_white}\$ "
	else
		PS1="${debian_chroot:+($debian_chroot)}\u@\h:\w$(parse_git_branch)\$ "
	fi
}

set_prompt
