#!/bin/bash

echo "Configuring UFW..."

# Enabling Service
sudo systemctl enable ufw.service

# Allowing ssh
sudo ufw allow ssh

# Enabling
sudo ufw enable
