#!/bin/sh
xmodmap -e 'keycode 66 = Escape'
xmodmap -e 'clear lock'
xrdb -merge $HOME/.Xresources
picom &
~/.fehbg &
while true; do
    dwm >/dev/null 2>&1
done
exec dwm
