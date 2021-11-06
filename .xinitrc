#!/bin/sh
xmodmap -e 'keycode 66 = Escape'
xmodmap -e 'clear lock'
while true; do
    dwm >/dev/null 2>&1
done
exec dwm
