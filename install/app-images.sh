#!/bin/bash


echo "Installing App Images..."

APPIMAGEDIR="/opt/app-images"

mkdir -p "$APPIMAGEDIR"

# Atom Editor
wget -O "$APPIMAGEDIR/atom-editor.AppImage" "https://bintray.com/probono/AppImages/download_file?file_path=Atom-v1.18.0.glibc2.17-x86_64.AppImage"
# Insomnia Designer
wget -O "$APPIMAGEDIR/insomnia-designer.AppImage" "https://updates.insomnia.rest/downloads/linux/latest?app=com.insomnia.designer"
# Insomnia REST Client
wget -O "$APPIMAGEDIR/insomnia-rest-client.AppImage" "https://updates.insomnia.rest/downloads/linux/latest"
# Rambox
wget -O "$APPIMAGEDIR/rambox.AppImage" "https://rambox.pro/api/downloadCE?os=linux&filetype=AppImage&arch=x86_64"

echo "App images downloaded"
