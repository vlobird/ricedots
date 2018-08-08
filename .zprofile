#!/bin/sh

export PATH="$PATH:$HOME/.scripts"
export EDITOR="/usr/bin/vim"
export TERMINAL="/usr/bin/urxvt"
export BROWSER="/usr/bin/firefox"
export READER="/usr/bin/mupdf"

[[ -f ~/.zshrc ]] && . ~/.zshrc

#if [[ "$(tty)" = "/dev/tty1" ]]; then
#	pgrep -x i3 || exec startx
#fi
