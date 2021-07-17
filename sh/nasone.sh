#!/usr/bin/env bash

usage()
{
    echo "Usage:"
    echo "$0 nas_ip"
    exit 1
}
[[ "$#" -ne 1 ]] && usage;
NAS_IP=$1

sudo mkdir /nasone
sudo chmod 777 /nasone

echo "/nasone    -fstype=nfs,noowners,nolockd,noresvport,hard,bg,intr,rw,tcp,nfc nfs://${NAS_IP}:/home/${USER}/share" | sudo tee /etc/auto_nas
echo "/-		        auto_nas        -nobrowse,nosuid" | sudo tee -a /etc/auto_master
echo "${NAS_IP} nasone" | sudo tee -a /etc/hosts