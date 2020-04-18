#!/usr/bin/env bash

echo -e "Script para instalar drivers en un sistema basado en Debian"
sudo add-apt-repository ppa:oibaf/graphics-drivers --yes
sudo apt update
sudo apt dist-upgrade --fix-missing --fix-policy --fix-broken -y

sudo echo "Section "Device"
    Identifier "AMDGPU"
    Driver "amdgpu"
    Option "AccelMethod" "glamor"
    Option "DRI" "3"
EndSection" >> /etc/X11/xorg.conf
echo -e "Listo que sea lo que dios quiera y que jale"
