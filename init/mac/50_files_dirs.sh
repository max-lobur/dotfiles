#!/usr/bin/env bash

# SSH
mkdir -p $HOME/.ssh
mkdir -p $HOME/.ssh/conf.d/
ln -sf $HOME/Library/CloudStorage/Dropbox/settings/dot_ssh/config $HOME/.ssh/config
touch $HOME/.ssh/agent_env

# Dirs
mkdir -p $HOME/git
mkdir -p $HOME/go/{bin,src,pkg}