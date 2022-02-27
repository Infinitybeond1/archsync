#!/usr/bin/env bash

sudo pacman -S zsh starship
touch ~/.zshrc
echo 'eval "$(starship init zsh)"' >> ~/.zshrc
chsh -s /usr/bin/zsh