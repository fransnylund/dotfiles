[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

setxkbmap fi

# Map escape to caps lock
setxkbmap -option caps:escape
# Set the rate at which a depressed key replicates. Default 660 25
xset r rate 330 50
  
export EDITOR="/usr/bin/vim"

nitrogen --restore &
dwmblocks &
picom &
redshift -P -O 5000


exec dwm
