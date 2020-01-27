#!/bin/bash

echo "Installing Snap packages..."

# Enabling Service
systemctl enable --now snapd.socket

snap install insomnia
snap install phpstorm --classic
snap install postman
snap install slack --classic
snap install whatsdesk
