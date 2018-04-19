```
     _       _    __ _ _           
  __| | ___ | |_ / _(_) | ___  ___ 
 / _` |/ _ \| __| |_| | |/ _ \/ __|
| (_| | (_) | |_|  _| | |  __/\__ \
 \__,_|\___/ \__|_| |_|_|\___||___/
```                              

All scripts are idempotent: fix & repeat until succeeds.

Each `init_*` script must have the following order:
* dotfiles
* os-specific scripts
* common scripts

## macOS
```
mkdir ~/git && cd ~/git
git clone https://github.com/max-lobur/dotfiles.git && cd dotfiles
git remote set-url origin git@github.com:max-lobur/dotfiles.git  # ssh push later
./init_mac.sh
```

## CentOS
```
sudo yum -y install git
git clone https://github.com/max-lobur/dotfiles.git && cd dotfiles
./init_centos.sh
```

## Debian/Ubuntu
```
¯\_(ツ)_/¯
```
