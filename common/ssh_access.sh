echo " ------------------------ Configuring SSH keys ------------------------- "
mkdir -p ~/.ssh
touch ~/.ssh/authorized_keys
chmod o-w ~/
chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys

for k in $(ls ./common/pubkeys/); do
    if not grep -Fxq "$k" ~/.ssh/authorized_keys; then
        cat ./common/pubkeys/"$k" >> ~/.ssh/authorized_keys
    fi
done
echo "SSH keys:"
cat ~/.ssh/authorized_keys
echo " ---------------------- DONE Configuring SSH keys ---------------------- "
