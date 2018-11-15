#!/usr/bin/env bash

if ! command -v brew 2>/dev/null; then
    sudo xcode-select --install
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
brew doctor

brew install ansible
brew install awscli
brew tap fullscreen/tap
brew install aws-rotate-key
brew install bash
brew install blueutil
brew install curl
brew install colordiff
brew install daemon
brew install direnv
brew install git
brew install --force gettext # envsubst
brew link --force gettext
brew install gnu-tar
brew install gpg
brew install gcc
brew install go
brew install groovy
brew install htop-osx
brew install hh
brew install iperf
brew install iperf3
brew install --HEAD jq
brew install hub
brew install kubernetes-cli
brew install kubernetes-helm
brew install kubectx --with-short-names
brew install kube-ps1
brew install txn2/tap/kubefwd
brew install kops
brew install mc
brew install nmap
brew install openssl
brew install postgresql
brew install perl
brew install pv
brew install python
brew install python2
ln -s /usr/local/bin/python{2,}
ln -s /usr/local/bin/pip{2,}
brew install ruby
/usr/local/bin/gem install travis
brew install ssh-copy-id
brew install telnet
brew install terraform
brew install terraform-docs
brew install terragrunt
brew install thefuck
brew install vault
brew install vim
brew install wakeonlan
brew install watch
brew install wget
brew install youtube-dl && brew install ffmpeg
brew install zsh
