#!/bin/sh
dwmblocks &
nitrogen --restore
xrdb -merge $HOME/.Xresources
picom &
nm-applet &
