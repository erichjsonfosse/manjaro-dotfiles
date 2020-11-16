#!/bin/bash

echo "Installing AUR packages..."

su "$LOGNAME" -c "pamac build --no-confirm atom-editor-bin otf-fira-code-git vivaldi"
