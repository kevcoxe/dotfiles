#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#export TERM=screen-256color-bce
export TERM="xterm-256color"

alias vbash='vim ~/.bashrc'
alias sbash='source ~/.bashrc'
alias vimrc='vim ~/.vimrc'
alias vtmux='vim ~/.tmux.conf'
alias rtmux='tmux source-file ~/.tmux.conf'
alias ta='tmux a -t'

alias ..='cd ..'
alias la='ls -a'
alias tls='tmux ls'

alias serve='python -m SimpleHTTPServer'

alias pull='git pull'
alias push='git push'
alias ca='git commit -a'
alias gstatus='git status'


mcd() {
    mkdir $1
    cd $1
}

t11() {
    ssh -L $1:localhost:$2 $3@$4
}

#set -o vi
