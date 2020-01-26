#!/bin/bash

echo "Installing Snap packages..."

# Enabling Service
sudo systemctl enable --now snapd.socket

sudo snap install insomnia
sudo snap install phpstorm --classic
sudo snap install postman
sudo snap install slack --classic
sudo snap install whatsdesk
