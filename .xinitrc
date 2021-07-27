[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

setxkbmap fi

nitrogen --restore &
dwmblocks &


exec dwm
