#!/bin/sh
setxkbmap -option ctrl:nocaps
xmodmap -e 'keycode 37 = '
xmodmap -e 'keycode 108 = Caps_Lock'
xcape -e 'Control_L=Escape'
xrdb -merge $HOME/.Xresources
picom &
~/.fehbg &
eval $(ssh-agent)
eval $(/usr/bin/gpg-agent --daemon)
exec i3
