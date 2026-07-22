#!/usr/bin/env bash

if ! command -v brew 2>/dev/null; then
    sudo xcode-select --install
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi
brew doctor

brew install bash
brew install curl
brew install colordiff
brew install direnv
brew install git
brew install gh
brew install gnu-sed
brew install gnu-tar
brew install gpg
brew install gcc
brew install goenv
brew install googleworkspace-cli
brew install htop-osx
brew install hstr
brew install make
brew install uv
brew install python-yq
brew install --HEAD jq
#brew install kafkacat
#brew install kubernetes-cli
#brew install kubernetes-helm
#brew install kubectx
#brew install txn2/tap/kubefwd
brew install openssl
brew install pyenv
brew install powerlevel10k
# brew install stern
brew install tailscale
brew install vim
brew install watch
brew install wget
brew install zsh
brew install z

#
## Casks below
#
brew install 1password
brew install appcleaner
brew install clipy
brew install google-chrome
brew install iterm2
brew install scroll-reverser
brew install the-unarchiver
brew install tunnelbear
brew install vlc
brew install whatsapp
