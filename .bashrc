# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# ALIASES FOR GIT
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gp="git push origin main"
alias gd="git diff"

# ALIASES FOR CONFIG
alias cs="config status"
alias ca="config add"
alias cc="config commit"
alias cps="config push origin main"
alias cdf="config diff"

# ENVIRONMENT VARIABLES
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.scripts:$PATH"

# STANDARD ALIASES
alias ls='ls --color=auto'
alias ll='ls -al --color=auto'
alias mi='sudo make clean install'
alias config="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"
alias update="yay -Syu;firefox_updater"
PS1="[\u@\h \W] "
set -o vi
