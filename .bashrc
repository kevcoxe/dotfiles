#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

ssh-add ~/.ssh/id_rsa

export TERM=screen-256color-bce

alias ttmux='tmuxinator'

alias ..='cd ..'
alias ssh='TERM=screen ssh'
alias mmd='multimarkdown'
bip=$(cat ~/Dropbox/desktopIP.txt)

alias pull='git pull'
alias push='git push'
alias ca='git commit -a'

# OSX show and hid all files
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

transfer() { if [ $# -eq 0 ]; then echo "No arguments specified. Usage:\necho transfer /tmp/test.md\ncat /tmp/test.md | transfer test.md"; return 1; fi 
tmpfile=$( mktemp -t transferXXX ); if tty -s; then basefile=$(basename "$1" | sed -e 's/[^a-zA-Z0-9._-]/-/g'); curl --progress-bar --upload-file "$1" "https://srtr.me/$basefile" >> $tmpfile; else curl --progress-bar --upload-file "-" "https://srtr.me/$1" >> $tmpfile ; fi; cat $tmpfile; rm -f $tmpfile; }

mhtml() {
    rm $1.html
    echo "CSS: /Users/stinkystink/markdown.css" > t_mmd
    cat $1.md >> t_mmd
    multimarkdown t_mmd >> $1.html
    rm t_mmd
}

pdf() {
    rm pdf/$1.pdf
    pandoc $1.md -o pdf/$1.pdf
    open pdf/$1.pdf
}

mcd() {
    mkdir $1
    cd $1
}

togl() {
    scp -r $1 kevcoxe1@gl.umbc.edu:~/$2
}

mpdf() {
    cp $1.tex pdf/ && cd pdf/
    rm $1.pdf
    pdflatex $1.tex
    rm *.aux *.log $1.tex
    cd ../
    open pdf/$1.pdf
}

set -o vi
