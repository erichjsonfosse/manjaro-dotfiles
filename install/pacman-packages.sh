#!/bin/bash

echo "Upgrading pacman packages..."
pacman -Syu --noconfirm

echo "Installing pacman packages..."
pacman -Sy --noconfirm \
 `# Browsers` \
 chromium \
 `# Development` \
 docker \
 docker-compose \
 libreoffice-fresh \
 `# Fonts` \
 otf-fira-code \
 powerline-fonts \
 ttf-fira-code \
 `# Utilities` \
 curl \
 filezilla \
 konsole \
 pamac \
 snapd \
 squashfuse \
 ufw \
 unzip \
 yakuake \
 zsh
