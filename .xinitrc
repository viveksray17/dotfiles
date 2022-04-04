#!/bin/sh
$HOME/.config/x11/keyboard-setup.sh
$HOME/.config/x11/rclone-gdrive-mount.sh
xrdb -merge $HOME/.Xresources
picom &
~/.fehbg &
eval $(ssh-agent)
eval $(/usr/bin/gpg-agent --daemon)
exec i3
