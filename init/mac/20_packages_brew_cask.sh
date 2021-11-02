#!/usr/bin/env bash

brew tap caskroom/cask

brew install 1password
#brew install avibrazil-rdm  # hack mac screen resolution
brew install appcleaner
brew install balenaetcher
brew install clipy
brew install daisydisk
brew install docker
brew install dropbox
brew install evernote
#brew install gitup
brew install goland
brew install google-chrome
brew install gpg-suite && sudo rm -rf /Library/Mail/Bundles/GPGMail.mailbundle
brew install pinentry-mac && echo "pinentry-program /usr/local/bin/pinentry-mac" >> ~/.gnupg/gpg-agent.conf
brew install iterm2
brew install keybase
brew install meetingbar
brew install ngrok
#brew install openoffice
brew install opera
brew install osxfuse && brew install sshfs
brew install pgadmin4
#brew install pycharm-ce
brew install p4v
brew install scroll-reverser
#brew install skype
brew install slack
#brew install spotify
#brew install spotmenu
brew install spectacle
brew install the-unarchiver
brew install telegram
#brew install tor-browser
brew install tunnelbear
brew install tunnelblick
#brew install virtualbox
#brew install virtualbox-extension-pack
brew install visual-studio-code
#brew install vlc
#brew install yujitach-menumeters
brew install zoomus
#cask install sidestep # Securing public wifi
#cask install transmit # FTP client
