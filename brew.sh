#!/usr/bin/env bash

# A simple script that installs linuxbrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "\$(${HOMEBREW_PREFIX}/bin/brew shellenv)"' >> ${shell_profile}
eval "\$(${HOMEBREW_PREFIX}/bin/brew shellenv)"
