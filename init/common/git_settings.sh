#!/usr/bin/env bash

echo " --------------------------- Configuring git --------------------------- "
git config --global core.excludesfile ~/.gitignore_global
git config --global user.name "$FULL_NAME"
git config --global user.email "${EM}"
git config --global core.editor ${EDITOR}
git config --global core.filemode true
git config --global color.ui true
git config --global push.default simple
git config --global pull.ff only

git config --global alias.br "! git for-each-ref --sort='authordate' --format='%(refname)%09%(authordate)' refs/heads | sed -e 's-refs/heads/--' | tail"


### MAC
if [[ "$OSTYPE" == "darwin"* ]]; then
    git config --global gpg.program gpg
    git config --global user.signingkey ${GPG_KEY}
    git config --global commit.gpgSign true
fi

# check
echo "Git settings:"
git config --list | tee
echo " ------------------------- DONE Configuring git ------------------------ "
