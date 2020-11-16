#!/bin/bash


echo "Installing App Images..."

APPIMAGEDIR="/opt/app-images"

mkdir -p "$APPIMAGEDIR"

# Insomnia Designer
wget -O "$APPIMAGEDIR/insomnia-designer" "https://updates.insomnia.rest/downloads/linux/latest?app=com.insomnia.designer"
# Insomnia REST Client
wget -O "$APPIMAGEDIR/insomnia-rest-client" "https://updates.insomnia.rest/downloads/linux/latest"
# Rambox
wget -O "$APPIMAGEDIR/rambox" "https://rambox.pro/api/downloadCE?os=linux&filetype=AppImage&arch=x86_64"

echo "App images downloaded"
