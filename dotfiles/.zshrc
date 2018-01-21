export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"
plugins=(git colored-man docker kubectl aws)

export PATH=$HOME/bin:/usr/local/bin:$PATH
source $ZSH/oh-my-zsh.sh

# No exit on ctrl+d
set -o ignoreeof

# hh
export HISTFILE=~/.zsh_history
export HH_CONFIG=prompt-bottom,rawhistory,keywords
export HH_PROMPT="bck-i-search: "
bindkey -s "\C-r" "\eqhh\n"

source ~/.commonshellrc
