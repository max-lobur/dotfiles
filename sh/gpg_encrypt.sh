#!/usr/bin/env bash
recipient=$1
echo -n "Type Secret: "
read secret

echo -n "${secret}" | gpg --encrypt --armor --trust-model always -r $recipient | pbcopy
echo "Done. Copied to buffer."
