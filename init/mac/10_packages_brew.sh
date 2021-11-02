#!/usr/bin/env bash

if ! command -v brew 2>/dev/null; then
    sudo xcode-select --install
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi
brew doctor

#brew install awscli  # use https://github.com/cloudposse/geodesic
#brew install awsume  # use https://github.com/cloudposse/geodesic
#brew install aws-rotate-key  # use https://github.com/cloudposse/geodesic
#brew install aws-iam-authenticator  # use https://github.com/cloudposse/geodesic
brew install bash
brew install blueutil
brew install curl
brew install colordiff
brew install daemon
brew install direnv
brew install exiftool
brew install flatbuffers
brew install git
brew install grpcurl
brew install --force gettext # envsubst
brew link --force gettext
brew install gnu-tar
brew install gpg
brew install gcc
brew install goenv
brew install htop-osx
brew install hstr
brew install iperf
brew install iperf3
brew install python-yq
brew install --HEAD jq
brew install hub
#brew install kafkacat  # use https://github.com/cloudposse/geodesic
#brew install kubernetes-cli  # use https://github.com/cloudposse/geodesic
#brew install kubernetes-helm  # use https://github.com/cloudposse/geodesic
#brew install kubectx  # use https://github.com/cloudposse/geodesic
#brew install txn2/tap/kubefwd  # use https://github.com/cloudposse/geodesic
brew install mc
brew install nmap
brew install openssl
#brew install packer  # use https://github.com/cloudposse/geodesic
brew install postgresql
brew install protobuf
brew install perl
brew install pv
brew install pyenv
brew install rbenv
brew install romkatv/powerlevel10k/powerlevel10k
brew install travis
brew install serverless
brew install ssh-copy-id
#brew install stern  # use https://github.com/cloudposse/geodesic
brew install telnet
brew install tfenv
brew install tgenv
#brew install vault  # use https://github.com/cloudposse/geodesic
brew install vim
brew install wakeonlan
brew install watch
brew install wget
brew install youtube-dl && brew install ffmpeg
brew install zsh
brew install z
