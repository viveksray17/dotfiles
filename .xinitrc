#!/bin/sh
xmodmap -e 'keycode 66 = Escape'
xmodmap -e 'clear lock'
xsetroot -cursor_name left_ptr &
xrdb -merge $HOME/.Xresources
picom &
pgrep -x sxhkd > /dev/null || sxhkd &
exec bspwm
