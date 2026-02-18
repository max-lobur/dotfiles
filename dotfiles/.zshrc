source ~/.commonshellrc

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH=$HOME/.oh-my-zsh

# export ZSH_THEME="dracula"

# Powerlevel10k
if [[ $(uname -m) == "arm64" ]]; then
    source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
else
    source ~/powerlevel10k/powerlevel10k.zsh-theme
fi
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


export PATH=$PATH:$HOME/git/dotfiles/sh
export PATH=/usr/local/bin:$PATH
source $ZSH/oh-my-zsh.sh

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# rbenv
eval "$(rbenv init - zsh)"

# direnv
eval "$(direnv hook zsh)"

# No exit on ctrl+d
set -o ignoreeof

# hstr
export HISTFILE=~/.zsh_history
export HSTR_CONFIG=prompt-bottom,keywords-matching,raw-history-view
export HSTR_PROMPT="bck-i-search: "
bindkey -s "\C-r" "\eqhstr\n"

export HISTSIZE=10000  # how many lines of history to keep in memory
export SAVEHIST=100000  # how many lines to keep in the history file

# colordiff
function diff {
     colordiff -u "$@" | less
}

# Ansible 
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

# To customize prompt, run `p10k configure` or edit ~/git/dotfiles/dotfiles/.p10k.zsh.
[[ ! -f ~/git/dotfiles/dotfiles/.p10k.zsh ]] || source ~/git/dotfiles/dotfiles/.p10k.zsh
