#!/bin/sh

export PATH="$PATH:$HOME/.scripts"
export EDITOR="/usr/bin/vim"
export TERMINAL="/usr/bin/urxvt"
export MUSIC="/usr/bin/cmus"
export BROWSER="/usr/bin/firefox"
export READER="/usr/bin/zathura"
alias ll='ls -l'

[[ -f ~/.zshrc ]] && . ~/.zshrc

if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep -x i3 || exec startx
fi
