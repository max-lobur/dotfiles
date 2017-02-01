echo " --------------------------- Configuring git --------------------------- "
git config --global core.excludesfile ~/.gitignore_global
git config --global user.name "Max Lobur"
git config --global user.email "max_lobur@outlook.com"
git config --global core.editor "vi"
git config --global core.filemode true
git config --global color.ui true
git config --global push.default simple

git config --global gitreview.scheme=ssh
git config --global gitreview.username=max_lobur

# check
echo "Git settings:"
git config --list
echo " ------------------------- DONE Configuring git ------------------------ "
