#!/bin/bash

echo "Installing AUR packages..."

su "$LOGNAME" pamac build atom-editor-bin
