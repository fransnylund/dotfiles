[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

setxkbmap fi
export EDITOR="/usr/bin/vim"

nitrogen --restore &
dwmblocks &


exec dwm
