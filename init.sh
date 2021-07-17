#!/usr/bin/env bash
if [[ "$OSTYPE" == "darwin"* ]]; then
    OS="mac"
elif [ -n "$(uname -a | grep Ubuntu)" ]; then
    OS="ubuntu"
elif [ -f /etc/redhat-release ]; then
    OS="rhel"
else 
    echo "Cannot determine the OS"
    exit 1
fi
echo "Detected OS: ${OS}"

source ./vars.sh

echo " --------------------------- INIT --------------------------- "
# 1) Dotfiles
for f in $(ls -d $(pwd)/dotfiles/.?* | grep -v "^/.$" | grep -v "/..$"); do
    ln -sf $f ~/
done

# 2) OS-specific
for f in $(ls ./init/${OS}/); do
    bash ./init/${OS}/${f}
done

# 3) Commons
bash ./init/common/setup_zsh.sh
bash ./init/common/git_settings.sh
[[ "${OS}" != "mac" ]] && bash ./init/common/ssh_access.sh

echo " --------------------------- DONE --------------------------- "
