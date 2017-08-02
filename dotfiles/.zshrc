export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"
plugins=(git colored-man docker kubectl aws)

export PATH=$HOME/bin:/usr/local/bin:$PATH
source $ZSH/oh-my-zsh.sh

source ~/.commonshellrc
