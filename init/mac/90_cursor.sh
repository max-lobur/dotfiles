#!/usr/bin/env bash

# Settings
conf_dir="${HOME}/Library/Application Support/Cursor/User/"
ln -sf ~/git/dotfiles/settings/cursor/settings.json "${conf_dir}/settings.json"
ln -sf ~/git/dotfiles/settings/cursor/keybindings.json "${conf_dir}/keybindings.json"
echo "> ll ${conf_dir}"
ls -la "${conf_dir}"

# Extensions
# cursor --list-extensions > settings/cursor/extensions.txt
extensions="${HOME}/git/dotfiles/settings/cursor/extensions.txt"
while IFS= read -r ext
do
    echo " ==> Installing: ${ext}"
    cursor --install-extension ${ext}
done < "${extensions}"
echo " === Cursor Extensions: === "
cursor --list-extensions
