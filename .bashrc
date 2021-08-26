#
# Franslund .bashrc
#

# Set bash options
set -o vi			# Vi mode
set -o noclobber	# Don't overwrite
set -o notify		# Notify when bg proc ends


shopt -s autocd
shopt -s cdspell


ulimit -u 5000		# Protect against fork bombs by limiting max user procs to 5000

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# Exports
LS_COLORS=$LS_COLORS:'di=0;35:'
export LS_COLORS
export EDITOR='/usr/bin/vim'
export PAGER='less'
export PATH=$PATH:~/scripts/
export HISTFILESIZE=1000000
export HISTSIZE=1000000
export HISTCONTROL=ignoreboth:erasedups


# Aliases
alias updateall='sudo pacman -Syu'
alias update-grub='grub-mkconfig -o /boot/grub/grub.cfg'
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


# Prompt
PS1='\[\033[01;32m\]\[[\033[01;31m\]\u\[\033[01;32m\]@\[\033[01;33m\]\h\[\033[01;32m\]]:\[\033[00m\]\w\[\033[00m\]\$ '


neofetch
