#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

uname -r

alias updateall='sudo pacman -Syu'
alias ls='ls --color=auto'
alias v='vim'
LS_COLORS=$LS_COLORS:'di=0;35:'
export LS_COLORS

PS1='\[\033[01;32m\]\[[\033[01;31m\]\u\[\033[01;32m\]@\[\033[01;33m\]\h\[\033[01;32m\]]:\[\033[00m\]\w\[\033[00m\]\$ '
