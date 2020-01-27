#!/bin/bash

echo "Installing pacman packages..."
pacman -Syu --noconfirm
pacman -Sy --noconfirm chromium curl docker docker-compose filezilla konsole libreoffice-fresh otf-fira-code pamac powerline-fonts snapd squashfuse ufw unzip yakuake zsh
