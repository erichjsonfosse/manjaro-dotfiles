#!/bin/bash

echo "Installing..."

chmod +x ./install/*.sh
chmod +x ./config/*.sh

source ./install/pacman-packages.sh
source ./install/snap-packages.sh
source ./install/aur-packages.sh

source ./configure/ufw-config.sh
source ./configure/zsh-config.sh

# TODO: Support upgrades
