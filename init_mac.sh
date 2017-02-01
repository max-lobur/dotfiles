# Init script for a main machine (Mac)

echo " --------------------------- INIT --------------------------- "
ln -s $(pwd)/dotfiles/.* ~/

for f in $(ls ./mac/); do
    bash ./mac/$f
done

bash ./common/packages_pip.sh
bash ./common/setup_zsh.sh
bash ./common/git_settings.sh

echo " --------------------------- DONE --------------------------- "
