#!/bin/bash

echo "Installing pacman packages..."
pacman -Syu
pacman -Syy chromium curl docker docker-compose filezilla libreoffice-fresh pamac powerline-fonts snapd ufw unzip zsh
