#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [[ ! $TERM =~ screen ]]; then
  exec tmux -2
fi

test -e ~/.dircolors && \
    eval `dircolors -b ~/.dircolors`

alias ls="ls --color=always"
alias grep="grep --color=always"
alias egrep="egrep --color=always"


#export TERM=screen-256color-bce
export TERM="xterm-256color"
export APPENGINE=/home/USER/google-cloud-sdk/bin/

alias ttmux='tmuxinator'
#alias tmux="TERM=screen-256color-bce tmux"
alias tmux="tmux -2"
#alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"

alias python='python2'
alias python3='python3'
alias pip='pip2'
alias pip3='pip3'

alias vbash='vim ~/.bashrc'
alias sbash='source ~/.bashrc'
alias vimrc='vim ~/.vimrc'
alias vtmux='vim ~/.tmux.conf'
alias rtmux='tmux source-file ~/.tmux.conf'
alias ta='tmux a -t'
alias tkill='tmux kill-session -t'

# remove
alias hideterm="/usr/libexec/PlistBuddy -c 'Add :LSUIElement bool true' /Applications/iTerm.app/Contents/Info.plist"

# restore
alias showterm="/usr/libexec/PlistBuddy -c 'Delete :LSUIElement' /Applications/iTerm.app/Contents/Info.plist"

alias ..='cd ..'
alias la='ls -a'
alias ll='ls -l'
alias lh='ls -lh'
alias lla='ls -la'
alias tls='tmux ls'

alias serve='python2 -m SimpleHTTPServer'

# git alias
alias clone='git clone'
alias pull='git pull'
alias push='git push'
alias ca='git commit -a'
alias gstatus='git status'


# OSX show and hid all files
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

jb() {
  js-beautify $1 --config ~/.jsbeautifyrc -r -q
}

pclean() {
  rm *.pyc
}

mcd() {
  mkdir $1
  cd $1
}

t11() {
  ssh -o ServerAliveInterval=100 -L $1:localhost:$2 $3@$4
}


tousb() {
  diskutil unmountDisk $2
  sudo dd if=$1 of=$2 bs=1m status=progress && sync
}

mthtml() {
  cat ~/template-md.html > $1.html
  pandoc $1.md -o $1.template
  cat $1.template >> $1.html
  echo "</article>" >> $1.html
  rm $1.template
}


set -o vi

export NVM_DIR="/Users/kmcoxe/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

if [ -f $(brew --prefix)/etc/bash_completion ]; then source $(brew --prefix)/etc/bash_completion; fi
