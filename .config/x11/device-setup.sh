#!/bin/sh
setxkbmap -option ctrl:nocaps
xcape -e 'Control_L=Escape'
xmodmap -e 'keycode 37 = '
xmodmap -e 'keycode 108 = Caps_Lock'
xinput set-prop "PixArt Lenovo USB Optical Mouse" "libinput Accel Speed" -0.7 # slow the sleep of the mouse
