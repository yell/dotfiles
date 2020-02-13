## locale variables
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"


## CUDA
export PATH=/usr/local/cuda/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH


## customize prompt
function set_ps1 {
    export PS1=$(~/.bash_prompt)
}
PROMPT_COMMAND=set_ps1
