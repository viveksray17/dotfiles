#!/usr/bin/env bash
case "$(file --dereference --brief --mime-type -- "$1")" in
  text/* | application/json) bat --color=always --theme=gruvbox-dark "$1";;
  application/x-tar) tar tf "$1";;
  application/zip) unzip -l "$1";;
esac
