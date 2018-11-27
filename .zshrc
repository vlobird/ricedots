# ZSH-CONFIG
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
zstyle :compinstall filename '~/.zshrc'
autoload -Uz compinit
compinit

# PROMPT
echo
PROMPT=' %F{red}%n%f %F{white}==>%f %F{yellow}[ %5~ ] %f $ '
RPROMPT='%F{white}%T%f'

# FUNCTIONS
newnote(){
workdir=~/work/markdown
[ $# -ne 1 ] && echo && echo "Syntax: $0 <notename>" && echo && return 1
mkdir -p $workdir/$1/img && echo "% "$1"" > $workdir/$1/$1.md && echo "% $(date +%d.%m.%Y)" >> $workdir/$1/$1.md && cd $workdir/$1 && vim $1.md
}

newdoc(){
workdir=~/work/latex
[ $# -ne 1 ] && echo && echo "Syntax: $0 <projectname>" && echo && return 1
mkdir -p $workdir/$1/img && cp ~/.templates/doc.tex $workdir/$1/$1.tex && cd $workdir/$1 && vim $1.tex
}

newpres(){
workdir=~/work/latex
[ $# -ne 1 ] && echo && echo "Syntax: $0 <projectname>" && echo && return 1
mkdir -p $workdir/$1/img && cp ~/.templates/beamer.tex $workdir/$1/$1.tex && cd $workdir/$1 && vim $1.tex
}

newhtml(){
workdir=~/work/html
[ $# -ne 1 ] && echo && echo "Syntax: $0 <projektname>" && echo && return 1
mkdir -p $workdir/$1/media && cp ~/.templates/(index.html|style.css) $workdir/$1 && cd $workdir/$1 && vim index.html
}

newgit(){
workdir=~/work/github
[ $# -ne 1 ] && echo && echo "Syntax: $0 <projectname>" && echo && return 1
mkdir $workdir/$1 && cp ~/.templates/git-readme.md $workdir/$1/README.md && cd $workdir/$1 && vim README.md
}

gclone(){
[ $# -ne 1 ] && echo && echo "Syntax: $0 '$username'/'$repo" && echo && return 1
cd ~/.GIT && git clone https://github.com/$1 && cd $1 && ls
}

wttr(){
[ $# -eq 0 ] && curl wttr.in
curl wttr.in/$1
}
# UNORDERED
alias v='view'
alias svim='sudo vim'
alias sranger='sudo ranger'
alias cls='clear'
alias rtv='rtv --enable-media'

# GREP
alias grep='grep --color=auto'
alias igrep='grep -i'
alias vgrep='grep -v'

# LISTINGS
alias ls='ls --color=auto'
alias l1='ls -1'
alias ll='ls -hl'
alias lla='ls -la'

# CONFIGS
alias cfi='vim ~/.config/i3/config'
alias cfb='vim ~/.config/i3blocks/config'
alias cfr='vim ~/.config/ranger/rc.conf'
alias cfv='vim ~/.vimrc'
alias cfz='vim ~/.zshrc'

# PACMAN
alias pQ='pacman -Q | grep '
alias pQu='pacman -Qu'
alias pS='sudo pacman -S'
alias pSs='sudo pacman -Ss'
alias pSi='sudo pacman -Si'
alias pRdd='sudo pacman -Rdd'

# CD
alias cd..='cd ..'
alias cdc='cd ~/.config'
alias cdd='cd ~/downloads'
alias cdm='cd /media'
alias cdM='cd ~/mnt'
alias cds='cd ~/.scripts'
alias cdt='cd ~/temp'
alias cd.t='cd ~/.templates'
alias cdw='cd ~/work'

# SSH/TELNET
alias OS='ssh root@192.168.178.88'
alias OSB='ssh root@192.168.178.55'
alias elec='ssh root@192.168.178.32'
alias fidel='telent root@192.168.178.20'

# MOUNTING
alias mfidelimport='sudo mount.cifs //192.168.178.20/Import ~/Fidel/Import'
alias umfidelimport='sudo umount ~/Fidel/Import'
alias mfidelmusic='sudo mount -t cifs //192.168.178.20/Music ~/Fidel/Music'
alias umfidelmusic='sudo umount ~/Fidel/Music'
alias mrasp='sshfs root@192.168.178.32:/ ~/mnt/rasp'
alias umrasp='fusermount -u ~/mnt/rasp'
alias mOS='sshfs root@192.168.178.88:/ ~/mnt/OS'
alias umOS='fusermount -u ~/mnt/OS'
alias mOSB='sshfs root@192.168.178.55:/ ~/mnt/OSB'
alias umOSB='fusermount -u ~/mnt/OSB'
