#!/bin/sh
setxkbmap -option ctrl:nocaps
xmodmap -e 'keycode 37 = '
xcape -e 'Control_L=Escape'
xrdb -merge $HOME/.Xresources
~/.fehbg &
eval $(ssh-agent)
eval $(/usr/bin/gpg-agent --daemon)
exec i3
