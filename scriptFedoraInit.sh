#!/usr/bin/env bash
echo "Script init fedora"
sudo -l
echo s | sudo dnf update
echo s | sudo dnf install git neovim vim python3 cinnamon-applet-globalappmenu cinnamon-* python3-pip fish terminator openssh nmap @custom-environment @cinnamon-desktop-environment @container-management @libreoffice @admin-tools @authoring-and-publishing @books @c-development @design-suite @development-tools @electronic-lab @engineering-and-scientific @python-science @rpm-development-tools @sound-and-video @system-tools @window-managers --skip-broken
echo "Thats all bye"
