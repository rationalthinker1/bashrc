# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

#=======================================================================================
# Load default bashrc (http://www.tldp.org/LDP/abs/html/sample-bashrc.html)
#=======================================================================================
if [ -f ~/.bash_default ]; then
    source ~/.bash_default
fi

#=======================================================================================
# Basic Settings
#=======================================================================================
export HISTSIZE=1000            # bash history will save N commands
export HISTFILESIZE=${HISTSIZE} # bash will remember N commands
export HISTCONTROL=ignoreboth   # ingore duplicates and spaces
export HISTIGNORE='&:ls:ll:la:cd:exit:clear:history'

# Default editor is set to vim
export VISUAL=vim

# Sets the command prompt to have colour
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
#export PS1='$(whoami)@$(hostname):$(pwd) > '

#=======================================================================================
# Aliases and functions
#=======================================================================================
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

#=======================================================================================
# Local Aliases and functions
#=======================================================================================
if [ -f ~/.bash_local ]; then
	source ~/.bash_local
fi
