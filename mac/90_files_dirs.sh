#!/usr/bin/env bash

# SSH
mkdir -p $HOME/.ssh
ln -sf $HOME/Dropbox/settings/dot_ssh/config $HOME/.ssh/config
touch $HOME/.ssh/agent_env

# VS Code
ln -sf ~/repos/dotfiles/settings/vscode/settings.json /Users/mlobur/Library/Application\ Support/Code/User/settings.json
ln -sf ~/repos/dotfiles/settings/vscode/keybindings.json /Users/mlobur/Library/Application\ Support/Code/User/keybindings.json

# Dirs
mkdir -p $HOME/venvs
mkdir -p $HOME/repos
mkdir -p $HOME/Install
mkdir -p $HOME/Pictures4k
mkdir -p $HOME/flickr
mkdir -p $HOME/go
