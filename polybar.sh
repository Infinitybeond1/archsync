#!/usr/bin/env bash

paru -S polybar
git clone --depth=1 https://github.com/adi1090x/polybar-themes.git
cd polybar-themes || exit
chmod +x setup.sh
./setup.sh
bash ~/.config/polybar/launch.sh --hack
echo "Remember to run 'nano ~/.config/bspwm/bspwmrc' and change the polybar command to 'bash ~/.config/polybar/launch.sh --hack' this will theme your polybar on startup"