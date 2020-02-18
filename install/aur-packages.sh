#!/bin/bash

echo "Installing AUR packages..."

su "$LOGNAME" -c "pamac build atom-editor-bin"
