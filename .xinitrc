#!/bin/sh
dbus-update-activation-environment --systemd DBUS_SESSION_BUS_ADDRESS DISPLAY XAUTHORITY
xmodmap -e 'keycode 66 = Escape'
xmodmap -e 'clear lock'
xrdb -merge $HOME/.Xresources
picom &
nitrogen --restore &
while true; do
    dwm >/dev/null 2>&1
done
exec dwm
