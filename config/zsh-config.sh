#!/bin/bash

BASEDIR=$(dirname "$0")
OHMYZSHFOLDER="$HOME/.oh-my-zsh"
ZSHRCFILE="$HOME/.zshrc"

echo "Configuring Zsh with Oh My Zsh..."

# Oh My Zsh
curl -fsSL -o install-ohmyzsh.sh https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
chmod +x install-ohmyzsh.sh
# Oh My Zsh install options
./install-ohmyzsh.sh --unattended
rm -f ./install-ohmyzsh.sh

# Oh My Zsh Plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# Oh My Zsh Theme (Powerlevel9k)
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# Activate template
sed -i "s/^ZSH_THEME=\(.*\)/\# ZSH_THEME=\1/g" "$ZSHRCFILE"
sed -i "/^\# ZSH_THEME=\(.*\)/a ZSH_THEME=\"powerlevel9k/powerlevel9k\"" "$ZSHRCFILE"

# Activate plugins
sed -i "s/^plugins=\(.*\)/\# plugins=\1/g" "$ZSHRCFILE"
sed -i "/^\# plugins=\(.*\)/a plugins=\(git zsh-autosuggestions zsh-syntax-highlighting\)" "$ZSHRCFILE"

# Add aliases
mkdir "$OHMYZSHFOLDER/plugins/manjaro-dotfiles"
cp -f "$BASEDIR/git.conf" "$OHMYZSHFOLDER/plugins/manjaro-dotfiles/git.zsh"
cp -f "$BASEDIR/pacman.conf" "$OHMYZSHFOLDER/plugins/manjaro-dotfiles/pacman.zsh"
cp -f "$BASEDIR/uuid.conf" "$OHMYZSHFOLDER/plugins/manjaro-dotfiles/uuid.zsh"
