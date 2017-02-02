#!/usr/bin/env bash
# Init script for a secondary machine (centos)

echo " --------------------------- INIT --------------------------- "
ln -sf $(pwd)/dotfiles/.* ~/

for f in $(ls ./centos/); do
    bash ./centos/"$f"
done

bash ./common/packages_pip.sh
bash ./common/ssh_access.sh
#bash ./common/setup_zsh.sh
bash ./common/git_settings.sh

echo " --------------------------- DONE --------------------------- "
