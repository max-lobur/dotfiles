# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Don't put duplicate lines or lines starting with space in the history
HISTCONTROL=ignoreboth
# append to the history file, don't overwrite it
shopt -s histappend
HISTSIZE=10000
HISTFILESIZE=5000

# check the window size after each command
shopt -s checkwinsize

# Colors!
export TERM=xterm-color
export CLICOLOR=1
export LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33'
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

source ~/.commonshellrc
source ~/.vgsrc
