if ! command -v brew 2>/dev/null; then
    xcode-select –install
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
brew doctor

brew install python
brew install python3
brew install git
brew install iperf
brew install iperf3
brew install vim
brew install curl
brew install wget
brew install htop-osx
brew install watch
brew install zsh
brew install wakeonlan
brew install ssh-copy-id
