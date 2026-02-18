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

source ~/.commonshellrc

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/lobur/.lmstudio/bin"
# End of LM Studio CLI section

