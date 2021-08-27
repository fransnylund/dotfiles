#
# Franslund .zshrc
#


# If not running interactively, don't do anything
[[ $- != *i* ]] && return


autoload -Uz compinit promptinit colors && colors
compinit
promptinit


# set options
set -o vi			# Vi mode
set -o noclobber	# Don't overwrite
set -o notify		# Notify when bg proc ends


ulimit -u 5000		# Protect against fork bombs by limiting max user procs to 5000


# Exports
LS_COLORS=$LS_COLORS:'di=0;35:'
export LS_COLORS
export BROWSER='/usr/bin/brave'
export EDITOR='/usr/bin/vim'
export VISUAL='/usr/bin/vim'
export PAGER='/usr/bin/less'
export PATH=$PATH:~/scripts/
export HISTFILESIZE=1000000
export HISTSIZE=1000000
export HISTCONTROL=ignoreboth:erasedups
export HISTFILE=~/.cache/zsh/history


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

# Prompt before overwriting
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'


PS1='%F{green}[%F{red}%n%F{green}@%F{yellow}%m%F{green}]%F{green}:%B%F{white}~%b%f $ '

source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
