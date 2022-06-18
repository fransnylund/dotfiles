#!/bin/sh
# .profile gets invoked after logging in

[ -f ~/.bashrc ] && . ~/.bashrc


# Exports
export TERM='xterm-256color'
export LS_COLORS=$LS_COLORS:'di=0;35:fi=0;00:'
export BROWSER='/usr/bin/brave'
export EDITOR='/usr/bin/vim'
export VISUAL='/usr/bin/vim'
export PAGER='/usr/bin/less'
export PATH=$PATH:~/scripts
export HISTSIZE=1000000
export HISTCONTROL=ignoreboth:erasedups
#export CDPATH="~"
#export LANG='C'
export SCRIPTS="$HOME/scripts"
export CFLAGS="-g -Wall -Wextra -pedantic -Wshadow"
export IGNOREEOF="1"


# XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export ATOM_HOME="$XDG_DATA_HOME"/atom
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME"/npm/npmrc
