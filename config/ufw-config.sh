#!/bin/bash

echo "Configuring UFW..."

# Disabling iptables Service
sudo systemctl disable iptables.service

# Enabling UFW Service
sudo systemctl enable ufw.service

# Allowing ssh
sudo ufw allow ssh

# Enabling
sudo ufw enable
