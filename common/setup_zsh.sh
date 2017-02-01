sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
if [ -e ~/.zshrc.pre-oh-my-zsh ] then
  mv ~/.zshrc.pre-oh-my-zsh ~/.zshrc
fi