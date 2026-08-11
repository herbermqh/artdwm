#!/bin/sh

xrdb merge ~/.Xresources 
xbacklight -set 10 2>/dev/null || brightnessctl set 10% &
if [ -f ~/.fehbg ]; then
    sh ~/.fehbg &
else
    feh --bg-fill ~/.dotfiles/Pictures/light_pink_blue.jpg &
fi
xset r rate 200 50 &
dunst &
picom &

dash ~/.config/artdwm/scripts/bar.sh &
export PATH="/usr/local/bin:$PATH"
while type chadwm >/dev/null; do chadwm && continue || break; done
