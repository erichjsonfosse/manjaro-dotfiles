#!/bin/bash

# Add .gitconfig
cp -f "$CONFIGDIR/.gitconfig.template" "$GITCONFIGFILE"

# Replace name and email
sed -i "s/MANJARO_DOTFILES_GITCONFIG_NAME/$MANJARO_DOTFILES_GITCONFIG_NAME/g" "$GITCONFIGFILE"
sed -i "s/MANJARO_DOTFILES_GITCONFIG_EMAIL/$MANJARO_DOTFILES_GITCONFIG_EMAIL/g" "$GITCONFIGFILE"
