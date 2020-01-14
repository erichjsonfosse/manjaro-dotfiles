#!/bin/bash

echo "Configuring ZSH..."

# Oh My ZSH
curl -fsSL -o install-ohmyzsh.sh https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
chmod +x install-ohmyzsh.sh
./install-ohmyzsh.sh
rm -f ./install-ohmyzsh.sh

# Oh My ZSH Plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# Oh My ZSH Theme (Powerlevel9k)
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
