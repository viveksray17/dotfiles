[ -f "$HOME/.config/shell/aliasrc" ] && source "$HOME/.config/shell/aliasrc"
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W'
PS1+='\[\033[38;5;63m\]$(if git rev-parse --git-dir > /dev/null 2>&1; then echo " git("; fi)\[\033[38;5;202m\]$(git branch 2>/dev/null | grep "^*" | colrm 1 2)\[\033[38;5;63m\]$(if git rev-parse --git-dir > /dev/null 2>&1; then echo ")"; fi)'
PS1+='\[\033[00m\]\$ '
set -o vi
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'
bind -m vi-insert 'Control-f: "source switch-directory\nclear\n"'
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
