#!/usr/bin/env python3

import os

print(
    """
░█████╗░██████╗░░█████╗░██╗░░██╗░██████╗██╗░░░██╗███╗░░██╗░█████╗░
██╔══██╗██╔══██╗██╔══██╗██║░░██║██╔════╝╚██╗░██╔╝████╗░██║██╔══██╗
███████║██████╔╝██║░░╚═╝███████║╚█████╗░░╚████╔╝░██╔██╗██║██║░░╚═╝
██╔══██║██╔══██╗██║░░██╗██╔══██║░╚═══██╗░░╚██╔╝░░██║╚████║██║░░██╗
██║░░██║██║░░██║╚█████╔╝██║░░██║██████╔╝░░░██║░░░██║░╚███║╚█████╔╝
╚═╝░░╚═╝╚═╝░░╚═╝░╚════╝░╚═╝░░╚═╝╚═════╝░░░░╚═╝░░░╚═╝░░╚══╝░╚════╝░
    """
)

print("Starting Install...")

print("Do you want to install the base applications? (y/N)\n")
baseapps = input()

print("Which shell do you want to install\n (1) Fish\n (2) Zsh\n")
shell = input()

print("Do you want to install HomeBrew? (y/N)\n")
brew = input()

print("Do you want to install Grapejuice (A roblox launcher)? (y/N)\n")
gj = input()

print("Do you want to install my polybar theming? (y/N)\n")
poly = input()

choices = [baseapps, shell, brew, gj, poly]

if choices[0] == 'y' or 'Y':
    os.system("sh main.sh")
    
if choices[1] == '1':
    os.system("sh fish.sh")
elif choices[1] == '2':
    os.system("zsh.sh")
    
if choices[2] == 'y' or 'Y':
    os.system('sh brew.sh')
    
if choices[3] == 'y' or 'Y':
    os.system("sh grapejuice.sh")
    
if choices[4] == 'y' or 'Y':
    os.system("sh polybar.sh")
    
print('Finished')