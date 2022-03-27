#!/bin/sh
setxkbmap -option ctrl:nocaps
xcape -e 'Control_L=Escape'
xmodmap -e 'keycode 37 = '
xmodmap -e 'keycode 108 = Caps_Lock'
xrdb -merge $HOME/.Xresources
picom &
~/.fehbg &
eval $(ssh-agent)
eval $(/usr/bin/gpg-agent --daemon)
# Mount google-drive using rclone
rclone-gdrive-mount.sh
exec i3
