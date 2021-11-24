#!/bin/sh
#fix gnome apps taking long time to open
dbus-update-activation-environment --systemd DBUS_SESSION_BUS_ADDRESS DISPLAY XAUTHORITY
xmodmap -e 'keycode 66 = Escape'
xmodmap -e 'clear lock'
xrdb -merge $HOME/.Xresources
/usr/lib/mate-polkit/polkit-mate-authentication-agent-1 &
picom &
pgrep -x sxhkd > /dev/null || sxhkd &
nitrogen --restore &
exec bspwm
