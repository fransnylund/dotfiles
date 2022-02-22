#!/bin/bash
#
# Frans .bashrc
#


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set bash options
set -o vi			# Vi mode
set -o noclobber	# Don't overwrite
set -o notify		# Notify when bg proc ends


shopt -s autocd     # Too lazy to type cd
shopt -s cdspell    # Correct spelling mistakes
shopt -s extglob    # Extended globbing
shopt -s globstar   # Recursive *
bind "set completion-ignore-case on"


ulimit -u 3000		# Protect against fork bombs by limiting max user procs to 3000


# Aliases
alias updateall='sudo pacman -Syu'
alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias ls='ls --color=auto'
alias v='vim'
alias vcfg='vim ~/.vimrc'
alias pic='~/Pictures'
alias doc='~/Documents'
alias dow='~/Downloads'
alias grep='grep --color=auto'
alias r='ranger'
alias zzz='systemctl suspend'
alias irssi="irssi --config="$XDG_CONFIG_HOME"/irssi/config --home="$XDG_DATA_HOME"/irssi"
alias yarn='yarn --use-yarnrc "$XDG_CONFIG_HOME/yarn/config"'
alias tmux='tmux -u'
alias c='printf "\e[H\e[2J"'


# Prompt before overwriting
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'


# Pathprepend
pathprepend(){

  for i in "$@"; do
    [[ ! -d "$i" ]] && echo "Not a valid directory" >&2 && return 1
    [[ "$i" =~ ^[^/] ]] && echo "Enter a full path" >&2 && return 1
    PATH=${PATH//:${i}:/:}
    PATH=${PATH/#${i}:/}
    PATH=${PATH/%:${i}/}
    export PATH="${i}:${PATH}"
  done
}


# Pathappend
pathappend(){

  for i in "$@"; do
    [[ ! -d "$i" ]] && echo "Not a valid directory" >&2 && return 1
    [[ "$i" =~ ^[^/] ]] && echo "Enter a full path" >&2 && return 1
    PATH=${PATH//:${i}:/:}
    PATH=${PATH/#${i}:/}
    PATH=${PATH/%:${i}/}
    export PATH="${PATH}:${i}"
  done
}

greet(){
  echo "hello mate!"
}

# Add the exit code to the prompt if != 0 
prompt() {
  value=$?
  [[ $value -ne 0 ]] && echo $value
}


# Prompt
PS1='\[\033[01;32m\][\[\033[01;31m\]\u\[\033[01;32m\]@\[\033[01;33m\]\h\[\033[01;32m\]]:\[\033[01;31m\]$(prompt)\[\033[00m\]\w\[\033[00m\]\$ '


#neofetch
