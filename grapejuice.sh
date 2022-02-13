#!/usr/bin/env bash

# Install grapejuice (a roblox launcher), and wine

git clone --depth=1 https://github.com/Frogging-Family/wine-tkg-git.git
cd wine-tkg-git || exit
curl https://raw.githubusercontent.com/e666666/robloxWineBuildGuide/main/roblox-wine-staging-v2.2.patch --output roblox-wine-staging-v2.2.patch
git apply roblox-wine-staging-v2.2.patch
cd wine-tkg-git || exit
makepkg -si
