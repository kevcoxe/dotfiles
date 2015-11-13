#  ---------------------------------------------------------------------------
#
#  Description:  This file holds all my BASH configurations and aliases
#
#  Sections:
#  1.   Environment Configuration
#  2.   Make Terminal Better (remapping defaults and adding functionality)
#  3.   File and Folder Management
#  4.   Searching
#  5.   Process Management
#  6.   Networking
#  7.   System Operations & Information
#  8.   Web Development
#  9.   Reminders & Notes
#
#  ---------------------------------------------------------------------------

source ~/.bashrc

#   -------------------------------
#   1.  ENVIRONMENT CONFIGURATION
#   -------------------------------

#   Change Prompt
#   ------------------------------------------------------------
    #PS1="\n\[\e[1;30m\]\342\224\214\342\224\200(\[\e[1;34m\]\$?\[\e[1;30m\])\[\e[1;30m\](\[\e[0;32m\]\u@\h\[\e[1;30m\])\342\224\200(\[\e[1;34m\]\w\[\e[1;30m\])\n\342\224\224\342\224\200(\[\e[37;1m\]! \!\[\e[1;30m\])\342\224\200\[\e[0;32m\]\$ \[\e[0m\]"
    #PS1="\n\[\e[1;30m\]\342\224\214\342\224\200\[\e[1;30m\](\[\e[0;32m\]\u@\h\[\e[1;30m\])\342\224\200(\[\e[1;34m\]\w\[\e[1;30m\])\n\342\224\224\342\224\200(\[\e[37;1m\]lol\[\e[1;30m\])\342\224\200\[\e[0;32m\]\$ \[\e[0m\]"

    PS1='\n\[\e[0m\]\342\224\214\342\224\200\[\e[1;30m\]\[\e[0;34m\](\[\e[0;32m\]\u@\h\[\e[0;34m\])(\[\e[1;36m\]\w\[\e[1;34m\])\n\[\e[0m\]\342\224\224\342\224\200\[\e[1;34m\](\[\e[1;36m\]lol\[\e[1;34m\]) \[\e[0;32m\]\$ \[\e[0m\]'
    
#   Set Paths
#   ------------------------------------------------------------

#   Set Default Editor (change 'Nano' to the editor of your choice)
#   ------------------------------------------------------------
    export EDITOR=/usr/bin/vim
    export CLICOLOR=1
    export LSCOLORS=ExFxBxDxCxegedabagacad

#   Set default blocksize for ls, df, du
#   from this: http://hints.macworld.com/comment.php?mode=view&cid=24491
#   ------------------------------------------------------------
    export BLOCKSIZE=1k

#   Add color to terminal
#   (this is all commented out as I use Mac Terminal Profiles)
#   from http://osxdaily.com/2012/02/21/add-color-to-the-terminal-in-mac-os-x/
#   ------------------------------------------------------------
#   export CLICOLOR=1
#   export LSCOLORS=ExFxBxDxCxegedabagacad


#   -----------------------------
#   2.  MAKE TERMINAL BETTER
#   -----------------------------
