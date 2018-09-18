#!/usr/bin/env bash

echo " -------------------- Applying macOS settings... -----------------------"

# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 1

# Set a shorter Delay until key repeat
defaults write NSGlobalDomain InitialKeyRepeat -int 12

# Show the ~/Library folder
chflags nohidden ~/Library

# Show the /Volumes folder
sudo chflags nohidden /Volumes

# Show hidden files
# defaults write com.apple.finder AppleShowAllFiles -bool true

# Empty Trash securely by default
defaults write com.apple.finder EmptyTrashSecurely -bool true

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Display full POSIX path as Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Disable the "Are you sure you want to open this application?" dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Show all filename extensions in Finder
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Dock
defaults write com.apple.dock magnification -boolean false
defaults write com.apple.dock tilesize -integer 35
defaults write com.apple.dock minimize-to-application -bool true
defaults write com.apple.dock expose-animation-duration -float 0.1;
killall Dock # restart

# Install Command Line Tools for Xcode
touch /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress
sudo softwareupdate -ai
rm /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress

#Store screenshots in subfolder on desktop
# mkdir ~/Desktop/Screenshots
# defaults write com.apple.screencapture location ~/Desktop/Screenshots

#Keep Mac from writing .DS_Store files to network drives.
#defaults write com.apple.desktopservices DSDontWriteNetworkStores true

echo "Reboot to apply KeyRepeat settings."
echo " ------------------ DONE Applying macOS settings... --------------------"
