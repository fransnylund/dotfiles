autoload -Uz compinit promptinit colors && colors
compinit
promptinit

# This will set the default prompt to the walters theme
PS1='%F{green}[%F{red}%n%F{green}@%F{yellow}%m%F{green}]%F{green}:%B%F{white}~%b%f $ '

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

source /home/toad/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
