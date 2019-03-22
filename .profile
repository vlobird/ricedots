#!/bin/sh

export PATH="$PATH:$HOME/.scripts"
export EDITOR="/usr/bin/vim"
export TERMINAL="/usr/bin/urxvt"
export BROWSER="/usr/bin/firefox"
#export BROWSER="/usr/bin/surf"
export READER="/usr/bin/zathura"

[[ -f ~/.zshrc ]] && . ~/.zshrc

if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep -x i3 || exec startx
fi
