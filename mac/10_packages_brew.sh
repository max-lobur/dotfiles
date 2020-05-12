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
brew install aws-iam-authenticator
brew install bash
brew install blueutil
brew install curl
brew install colordiff
brew install daemon
brew install direnv
brew install flatbuffers
brew install git
brew install grpcurl
brew install --force gettext # envsubst
brew link --force gettext
brew install gnu-tar
brew install gpg
brew install gcc
brew install go
brew install groovy
brew install htop-osx
brew install hstr
brew install iperf
brew install iperf3
brew install python-yq
brew install --HEAD jq
brew install hub
brew install fkafkacat
brew install kubernetes-cli
brew install kubernetes-helm
brew install kubectx
brew install kube-ps1
brew install txn2/tap/kubefwd
brew install kops
brew install mc
brew install nmap
brew install openssl
brew install packer
brew install postgresql
brew install protobuf
brew install perl
brew install pv
brew install python
brew install https://raw.githubusercontent.com/Homebrew/homebrew-core/86a44a0a552c673a05f11018459c9f5faae3becc/Formula/python@2.rb
ln -s /usr/local/bin/python{3,}
ln -s /usr/local/bin/pip{3,}
brew install ruby
/usr/local/bin/gem install travis
brew install serverless
brew install ssh-copy-id
brew install stern
brew install telnet
brew install tfenv
brew install terragrunt
brew install thefuck
brew install vault
brew install vim
brew install wakeonlan
brew install watch
brew install wget
brew install youtube-dl && brew install ffmpeg
brew install zsh
brew install z
