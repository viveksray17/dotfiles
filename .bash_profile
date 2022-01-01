export PATH="$HOME/.scripts:$HOME/.local/bin:$PATH"
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi
