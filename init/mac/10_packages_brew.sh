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
brew install daemon
brew install direnv
brew install exiftool
brew install flatbuffers
brew install git
brew install git-xargs
brew install grpcurl
brew install --force gettext # envsubst
brew link --force gettext
brew install gnu-sed
brew install gnu-tar
brew install gpg
brew install gcc
brew install goenv
brew install htop-osx
brew install hstr
brew install iperf
brew install iperf3
brew install libgfshare
brew install make
brew install python-yq
brew install --HEAD jq
#brew install kafkacat
#brew install kubernetes-cli
#brew install kubernetes-helm
#brew install kubectx
#brew install txn2/tap/kubefwd
brew install nmap
brew install openssl
brew install packer
brew install parallel
brew install postgresql
brew install perl
brew install pv
brew install pyenv
brew install rbenv
brew install powerlevel10k
brew install rsync
brew install ssh-copy-id
# brew install stern
brew install telnet
brew install tofuenv
brew install vim
brew install volta
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
brew install cursor
brew install daisydisk
brew install docker-desktop
brew install docker-compose
brew install dropbox
brew install google-chrome
brew install iterm2
brew install scroll-reverser
brew install slack
brew install the-unarchiver
brew install tunnelbear
brew install vlc
brew install zoomus
