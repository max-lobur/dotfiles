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

# Hack zsh bira prompt to prettify virtualenv, kube-ps1 and git.
prompt_git() {
  # based on agnoster
  local PL_BRANCH_CHAR
  () {
    local LC_ALL="" LC_CTYPE="en_US.UTF-8"
    PL_BRANCH_CHAR=$'\ue0a0'         # 
  }
  local ref
  if $(git rev-parse --is-inside-work-tree >/dev/null 2>&1); then
    ref=$(git symbolic-ref HEAD 2> /dev/null) || ref="➦ $(git rev-parse --short HEAD 2> /dev/null)"
    setopt promptsubst
    autoload -Uz vcs_info
    zstyle ':vcs_info:*' enable git
    zstyle ':vcs_info:*' get-revision true
    zstyle ':vcs_info:*' check-for-changes true
    zstyle ':vcs_info:*' stagedstr '✚'
    zstyle ':vcs_info:*' unstagedstr '●'
    zstyle ':vcs_info:*' formats ' %u%c'
    zstyle ':vcs_info:*' actionformats ' %u%c'
    vcs_info
    echo -n "${ref/refs\/heads\//$PL_BRANCH_CHAR }${vcs_info_msg_0_%% }"
  fi
}
export VIRTUAL_ENV_DISABLE_PROMPT=1
local pythonenv='`[ -z "$VIRTUAL_ENV" ] || echo "(${VIRTUAL_ENV##*/})"`'
local kubeenv='`kube_ps1`'
local git='`prompt_git`'

PROMPT=" ╭─${pythonenv}${kubeenv} ${current_dir} ${git}
 ╰─ᐅ "  
# %B%F{1}❯%F{3}❯%F{2}❯%f%b

source ~/.commonshellrc
