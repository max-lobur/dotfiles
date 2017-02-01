echo " ------------------------ Configuring SSH keys ------------------------- "
mkdir ~/.ssh
touch ~/.ssh/authorized_keys
chmod o-w ~/
chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys

for k in $(./common/pubkeys) do;
  cat ./common/pubkeys/$k >> ~/.ssh/authorized_keys
done
echo "Added SSH keys:"
cat ~/.ssh/authorized_keys
echo " ---------------------- DONE Configuring SSH keys ---------------------- "
