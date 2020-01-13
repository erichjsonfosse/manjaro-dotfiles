#!/bin/bash

echo "Configuring UFW..."

# Allowing ssh
ufw allow ssh

# Enabling
ufw enable
