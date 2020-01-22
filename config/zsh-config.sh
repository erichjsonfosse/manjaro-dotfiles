#!/bin/bash

BASEDIR=$(dirname "$0")
ZSHRCFILE="~/.zshrc"

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
sed -i -e "s/^ZSH_THEME=(.*)/#ZSH_THEME=$1/g" "$ZSHRCFILE"
sed -i -e "s/^#ZSH_THEME=.*/a ZSH_THEME=\"powerlevel9k/powerlevel9k\"/g" "$ZSHRCFILE"

# Activate plugins
sed -i -e "s/^plugins=(.*)/#plugins=$1/g" "$ZSHRCFILE"
sed -i -e "s/^#plugins=.*/a plugins=\(git zsh-autosuggestions zsh-syntax-highlighting\)/g" "$ZSHRCFILE"

# Add aliases
cat "$BASEDIR/aliases.conf" >> "$ZSHRCFILE"
