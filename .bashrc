# If not running interactively, don't do anything
[[ $- != *i* ]] && return
source ~/.aliases
PS1="[\u@\h \w] "
set -o vi
