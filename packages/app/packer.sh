#!/usr/bin/env bash

mkdir -p /usr/local/src
wget -c http://aur.archlinux.org/packages/pa/packer/packer.tar.gz -O /usr/local/src/packer.tar.gz
if [ $? -ne 0 ]; then
    echo "ERROR! Couldn't downloading packer.tar.gz. Skipping packer install."
else
    cd /usr/local/src
    tar zxvf packer.tar.gz
    cd packer
    makepkg --asroot -ifs --noconfirm
fi
