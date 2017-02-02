#!/usr/bin/env bash

echo " ------------------------ Configuring SSH keys ------------------------- "
mkdir -p ~/.ssh
touch ~/.ssh/authorized_keys
chmod o-w ~/
chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys

for k in $(ls ./common/pubkeys/); do
    key=$(cat ./common/pubkeys/"$k")
    if ! grep -q "$key" ~/.ssh/authorized_keys; then
        echo "Adding $k key"
        echo $key >> ~/.ssh/authorized_keys
    fi
done
echo "SSH keys:"
cat ~/.ssh/authorized_keys
echo " ---------------------- DONE Configuring SSH keys ---------------------- "
