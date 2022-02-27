#!/usr/bin/env bash

# Define the user (used for the chown command to install paru)
user=aksharv 
username=Infinitybeond1
email=Infinitybeond1@protonmail.com

sudo pacman -S git 
sudo pacman -S --needed base-devel
cd /tmp || exit && echo "Paru installation failed"
mkdir archsync
git clone https://aur.archlinux.org/paru.git
sudo chown -R $user:users ./paru
cd paru || exit && echo "Failed to build paru"
makepkg -si
paru -S librewolf-bin pamac-all
sudo pacman -S bluez bluez-utils blueman
lsmod | grep btusb
sudo systemctl start bluetooth.service && sudo systemctl enable bluetooth.service
git clone https://github.com/Infinitybeond1/arcolinux-spices.git
cd arcolinux-spices || exit
sudo pacman -U arcolinux-spices-git-21.07-04-any.pkg.tar.zst
sudo pacman -S discord-canary
paru -S nordic-darker-theme
sudo pacman -S nodejs
git clone https://github.com/powercord-org/powercord
cd powercord || exit 
npm i
sudo npm run plug
git config --global user.name "$username"
git config --global user.email "$email"
echo "Base Installation Completed"

