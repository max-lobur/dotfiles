export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="bira"
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
export KUBE_PS1_CTX_COLOR=green
export KUBE_PS1_NS_COLOR=yellow
kubeoff

# Hack bira prompt to prettify virtualenv and kube-ps1
export VIRTUAL_ENV_DISABLE_PROMPT=1
local pythonenv='`[ -z "$VIRTUAL_ENV" ] || echo "(${VIRTUAL_ENV##*/})"`'
local kubeenv='`kube_ps1`'
PROMPT=" ╭─${pythonenv}${kubeenv} ${current_dir} ${git_branch}
 ╰─%B${user_symbol}%b "

source ~/.commonshellrc
