# dotfiles
Set of scripts/dotfiles to set up mac and linux machines.  
All scripts are idempotent: fix & repeat until succeeds.

Each init script should have the following order:
* dotfiles
* os-specific scripts
* common scripts

## macOS
```
mkdir ~/repos && cd ~/repos
git clone git@github.com:max-lobur/dotfiles.git && cd dotfiles
./init_mac.sh
```

## CentOS
```
sudo yum -y install git
git clone https://github.com/max-lobur/dotfiles.git && cd dotfiles
./init_centos.sh
```

## Debian/Ubuntu
TODO
