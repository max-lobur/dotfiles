#!/usr/bin/env bash

echo " -------------------- Applying macOS settings... -----------------------"

#Faster Expose
defaults write com.apple.dock expose-animation-duration -float 0.20;
#Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 1
#Set a shorter Delay until key repeat
defaults write NSGlobalDomain InitialKeyRepeat -int 12
#Show the ~/Library folder
chflags nohidden ~/Library

#Store screenshots in subfolder on desktop
# mkdir ~/Desktop/Screenshots
# defaults write com.apple.screencapture location ~/Desktop/Screenshots

#Add a context menu item for showing the Web Inspector in web views
#defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

#Keep Mac from writing .DS_Store files to network drives.
defaults write com.apple.desktopservices DSDontWriteNetworkStores true

echo "Reboot to apply KeyRepeat settings."
echo " ------------------ DONE Applying macOS settings... --------------------"
