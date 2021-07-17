#!/usr/bin/env bash

brew tap caskroom/cask

brew install --cask 1password
#brew install --cask avibrazil-rdm  # hack mac screen resolution
brew install --cask appcleaner
brew install --cask balenaetcher
brew install --cask clipy
brew install --cask daisydisk
brew install --cask docker
brew install --cask dropbox
brew install --cask evernote
#brew install --cask gitup
brew install --cask goland
brew install --cask google-chrome
brew install --cask gpg-suite && sudo rm -rf /Library/Mail/Bundles/GPGMail.mailbundle
brew install pinentry-mac && echo "pinentry-program /usr/local/bin/pinentry-mac" >> ~/.gnupg/gpg-agent.conf
brew install --cask iterm2
brew install --cask keybase
brew install --cask meetingbar
brew install --cask ngrok
#brew install --cask openoffice
brew install --cask opera
brew install --cask osxfuse && brew install sshfs
brew install --cask pgadmin4
brew install --cask pycharm-ce
brew install --cask p4v
brew install --cask scroll-reverser
#brew install --cask skype
brew install --cask slack
#brew install --cask spotify
#brew install --cask spotmenu
brew install --cask spectacle
brew install --cask the-unarchiver
brew install --cask telegram
#brew install --cask tor-browser
brew install --cask tunnelbear
brew install --cask tunnelblick
#brew install --cask virtualbox
#brew install --cask virtualbox-extension-pack
brew install --cask visual-studio-code
#brew install --cask vlc
brew install --cask yujitach-menumeters
brew install --cask zoomus
#cask install sidestep # Securing public wifi
#cask install transmit # FTP client
