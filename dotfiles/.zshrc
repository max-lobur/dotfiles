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

# direnv
eval "$(direnv hook zsh)"

export HISTSIZE=10000  # how many lines of history to keep in memory
export SAVEHIST=10000  # how many lines to keep in the history file

# k8s PS1
source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"
export KUBE_PS1_SYMBOL_ENABLE=false
PROMPT='$(kube_ps1)'$PROMPT
kubeoff

source ~/.commonshellrc
