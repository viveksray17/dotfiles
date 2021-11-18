#!/bin/sh
xmodmap -e 'keycode 66 = Escape'
xmodmap -e 'clear lock'
xrdb -merge $HOME/.Xresources
picom &
pgrep -x sxhkd > /dev/null || sxhkd &
$HOME/.fehbg &
exec bspwm
