#!/usr/bin/env bash

echo " --------------------------- Configuring git --------------------------- "
git config --global core.excludesfile ~/.gitignore_global
git config --global user.name "Max Lobur"
git config --global user.email "max_lobur""@""outlook.com"
git config --global core.editor "vi"
git config --global core.filemode true
git config --global color.ui true
git config --global push.default simple

git config --global gitreview.scheme=ssh
git config --global gitreview.username=max_lobur

git config --global alias.br "\!git for-each-ref --sort='authordate' --format='%(refname)%09%(authordate)' refs/heads | sed -e 's-refs/heads/--' | tail"


### MAC
if [[ "$OSTYPE" == "darwin"* ]]; then
git config --global user.signingkey 44467E0C458A6875C0C03BDBEF76DF7495A88C1E
git config --global gpg.program gpg
fi

# check
echo "Git settings:"
git config --list
echo " ------------------------- DONE Configuring git ------------------------ "
