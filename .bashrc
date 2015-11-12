#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#export TERM=screen-256color-bce
export TERM=xterm-256color
export APPENGINE=/home/USER/google-cloud-sdk/bin/

alias ttmux='tmuxinator'
#alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"

alias python='python2'
alias python3='python'

alias vbash='vim ~/.bashrc'
alias sbash='source ~/.bashrc'
alias vimrc='vim ~/.vimrc'
alias vtmux='vim ~/.tmux.conf'
alias rtmux='tmux source-file ~/.tmux.conf'

alias sv11='ssh kmcoxe@50.246.120.172'
alias bbox='ssh -X stinkystink@192.168.1.206'
alias scentos='VBoxManage startvm Centos7 --type headless' 
alias centos='ssh -p 3022 root@127.0.0.1'

alias ..='cd ..'
alias la='ls -a'
alias tls='tmux ls'

alias serve='python -m SimpleHTTPServer'

alias pull='git pull'
alias push='git push'
alias ca='git commit -a'
alias status='git status'

# OSX show and hid all files
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'


mcd() {
    mkdir $1
    cd $1
}

set -o vi
