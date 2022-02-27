#!/usr/bin/env bash

sudo pacman -S fish starship
echo "starship init fish | source" >> ~/.config/fish/config.fish
chsh -s /usr/bin/fish