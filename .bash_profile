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
#   Red host
    PS1='\n\[\e[0m\]\342\224\214\342\224\200\[\e[1;30m\]\[\e[0;34m\](\[\e[0;32m\]\u\[\e[0;34m\])(\[\e[1;36m\]\w\[\e[1;34m\])\n\[\e[0m\]\342\224\224\342\224\200\[\e[1;34m\](\[\e[1;31m\]\h\[\e[1;34m\]) \[\e[0;32m\]\$ \[\e[0m\]'
#   Green host
#    PS1='\n\[\e[0m\]\342\224\214\342\224\200\[\e[1;30m\]\[\e[0;34m\](\[\e[0;32m\]\u\e[1;34m\])(\[\e[1;36m\]\w\[\e[1;34m\])\n\[\e[0m\]\342\224\224\342\224\200\[\e[1;34m\](\e[0;32m\]\h\[\e[0;34m\]) \[\e[0;32m\]\$ \[\e[0m\]'

#   Yellow host
#    PS1='\n\[\e[0m\]\342\224\214\342\224\200\[\e[1;30m\]\[\e[0;34m\](\[\e[0;32m\]\u\e[1;34m\])(\[\e[1;36m\]\w\[\e[1;34m\])\n\[\e[0m\]\342\224\224\342\224\200\[\e[1;34m\](\e[0;33m\]\h\[\e[0;34m\]) \[\e[0;32m\]\$ \[\e[0m\]'

#   Blue host
#    PS1='\n\[\e[0m\]\342\224\214\342\224\200\[\e[1;30m\]\[\e[0;34m\](\[\e[0;32m\]\u\e[1;34m\])(\[\e[1;36m\]\w\[\e[1;34m\])\n\[\e[0m\]\342\224\224\342\224\200\[\e[1;36m\](\e[0;34m\]\h\[\e[0;36m\]) \[\e[0;32m\]\$ \[\e[0m\]'

#   Purple host
#    PS1='\n\[\e[0m\]\342\224\214\342\224\200\[\e[1;30m\]\[\e[0;34m\](\[\e[0;32m\]\u\e[1;34m\])(\[\e[1;36m\]\w\[\e[1;34m\])\n\[\e[0m\]\342\224\224\342\224\200\[\e[1;34m\](\e[0;35m\]\h\[\e[0;34m\]) \[\e[0;32m\]\$ \[\e[0m\]'

#   Cyan host
#    PS1='\n\[\e[0m\]\342\224\214\342\224\200\[\e[1;30m\]\[\e[0;34m\](\[\e[0;32m\]\u\e[1;34m\])(\[\e[1;36m\]\w\[\e[1;34m\])\n\[\e[0m\]\342\224\224\342\224\200\[\e[1;34m\](\e[0;36m\]\h\[\e[0;34m\]) \[\e[0;32m\]\$ \[\e[0m\]'

#   White host
#    PS1='\n\[\e[0m\]\342\224\214\342\224\200\[\e[1;30m\]\[\e[0;34m\](\[\e[0;32m\]\u\e[1;34m\])(\[\e[1;36m\]\w\[\e[1;34m\])\n\[\e[0m\]\342\224\224\342\224\200\[\e[1;34m\](\e[0;37m\]\h\[\e[0;34m\]) \[\e[0;32m\]\$ \[\e[0m\]'

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
