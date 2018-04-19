#!/usr/bin/env bash

# Settings
conf_dir="${HOME}/Library/Application Support/Code/User/"
ln -sf ~/git/dotfiles/settings/vscode/settings.json "${conf_dir}/settings.json"
ln -sf ~/git/dotfiles/settings/vscode/keybindings.json "${conf_dir}/keybindings.json"
echo "> ll ${conf_dir}"
ls -la "${conf_dir}"

# Extensions
extensions="${HOME}/git/dotfiles/settings/vscode/extensions.txt"
while IFS= read -r ext
do
    echo " ==> Installing: ${ext}"
    code --install-extension ${ext}
done < "${extensions}"
echo " === VSCode Extensions: === "
code --list-extensions