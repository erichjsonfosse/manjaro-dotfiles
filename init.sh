#!/bin/bash

if [ "$EUID" -ne 0 ]
  then
    echo "Script must be run as root"
    exit
fi

while true; do
  read -rp "Continue with installation? (y/n)" yn
  case $yn in
    [Yy]* ) break;;
    [Nn]* ) exit;;
    * ) echo "Please answer yes or no.";;
  esac
done

chmod +x ./*.sh
chmod +x ./install/*.sh
chmod +x ./config/*.sh

source ./set-variables.sh
source ./request-input.sh
source ./install/pacman-packages.sh
source ./install/enable-snap-service.sh
# TODO: Handle session restart after enabling snap service
source ./install/snap-packages.sh
# source ./install/aur-packages.sh
source ./install/app-images.sh

source ./config/ufw-config.sh
source ./config/zsh-config.sh
source ./config/git-config.sh
source ./config/ssh-config.sh

source ./bump-version.sh


# Change ownership of home folder files recursively
echo "Changing ownership of home folder..."
chown -R "$LOGNAME:$LOGNAME" "$HOMEDIR"
