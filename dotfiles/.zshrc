export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"
plugins=(git colored-man docker kubectl aws)

export PATH=$HOME/bin:/usr/local/bin:$PATH
source $ZSH/oh-my-zsh.sh

# hh
export HISTFILE=~/.zsh_history  # ensure history file visibility
export HH_CONFIG=hicolor        # get more colors
bindkey -s "\C-r" "\eqhh\n"     # bind hh to Ctrl-r (for Vi mode check doc)

source ~/.commonshellrc
