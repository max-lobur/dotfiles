```
     _       _    __ _ _           
  __| | ___ | |_ / _(_) | ___  ___ 
 / _` |/ _ \| __| |_| | |/ _ \/ __|
| (_| | (_) | |_|  _| | |  __/\__ \
 \__,_|\___/ \__|_| |_|_|\___||___/

```
Zero friction mac and linux bootstrap
![iterm2](./iterm2.png)

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

## Adding a distro
The `init_<distro>.sh` script must have the following order:
1. dotfiles
1. os-specific scripts
1. common scripts

## Troubleshooting
All scripts are idempotent - hack & rerun until it works.
