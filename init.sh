#!/bin/bash

if [ "$EUID" -ne 0 ]
  then
    echo "Script must be run as root"
    exit
fi


echo "Installing..."

chmod +x ./*.sh
chmod +x ./install/*.sh
chmod +x ./config/*.sh

source ./set-variables.sh
source ./request-input.sh
source ./install/pacman-packages.sh
source ./install/snap-packages.sh
source ./install/aur-packages.sh

source ./config/ufw-config.sh
source ./config/zsh-config.sh
source ./config/git-config.sh

# TODO: Support upgrades
