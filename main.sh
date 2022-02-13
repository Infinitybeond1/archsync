#!/usr/bin/env bash

# Define the user (used for the chown command to install paru)
user=aksharv 

sudo pacman -S git 
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
sudo chown -R $user:users ./paru
cd paru || exit && echo "Failed to build paru"
makepkg -si
paru -S librewolf-bin pamac-nosnap 
sudo pacman -S bluez bluez-utils blueman
lsmod | grep btusb
sudo systemctl start bluetooth.service && sudo systemctl enable bluetooth.service
git clone https://github.com/Infinitybeond1/arcolinux-spices.git
cd arcolinux-spices || exit
sudo pacman -U arcolinux-spices-git-21.07-04-any.pkg.tar.zst
sudo pacman -S discord-canary
paru -S powercord-git nordic-darker-theme
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo "Finished! You can also run 'sh polybar.sh' if you want to configure polybar" && exit