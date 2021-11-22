#!/bin/sh
xmodmap -e 'keycode 66 = Escape'
xmodmap -e 'clear lock'
xrdb -merge $HOME/.Xresources
/usr/lib/mate-polkit/polkit-mate-authentication-agent-1 &
picom &
pgrep -x sxhkd > /dev/null || sxhkd &
$HOME/.fehbg &
exec bspwm
