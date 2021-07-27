#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

uname -r

# alias ls='ls --color=auto'
PS1='\[\033[01;32m\]\[[\033[01;31m\]\u\[\033[01;32m\]@\[\033[01;33m\]\h\[\033[01;32m\]]:\[\033[01;33m\]\w\[\033[01;32m\]\$ '
