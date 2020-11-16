#!/bin/bash

######################### Git Config ##########################
read -rp 'Git Config Name: ' MANJARO_DOTFILES_GITCONFIG_NAME
read -rp 'Git Config Email: ' MANJARO_DOTFILES_GITCONFIG_EMAIL

export MANJARO_DOTFILES_GITCONFIG_NAME
export MANJARO_DOTFILES_GITCONFIG_EMAIL
######################### Git Config ##########################

# Ensure .ssh folder exists
mkdir -p "$HOMEDIR/.ssh"

######################### SSH key files ##########################
while true; do
  read -rp "Generate SSH key files? (y/n)" yn
  case $yn in
    [Yy]* ) ssh-keygen -f "$HOMEDIR/.ssh/id_rsa" && chown "$LOGNAME":"$LOGNAME" "$HOMEDIR/.ssh/id_rsa";;
    [Nn]* ) break;;
    * ) echo "Please answer yes or no.";;
  esac
done
######################### SSH key files ##########################
