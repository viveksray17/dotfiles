#!/bin/sh
xmodmap -e 'keycode 66 = Escape'
xmodmap -e 'clear lock'
xrdb -merge $HOME/.Xresources
picom &
~/.fehbg &
eval $(ssh-agent)
if [ -x /usr/bin/gpg-agent ]; then
 eval "$(/usr/bin/gpg-agent --daemon)"
fi
while true; do
    dwm >/dev/null 2>&1
done
exec dwm
