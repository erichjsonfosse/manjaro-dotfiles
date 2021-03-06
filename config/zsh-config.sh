#!/bin/bash

echo "Configuring Zsh with Oh My Zsh..."
ZSH="$HOMEDIR/.oh-my-zsh"
export ZSH

# Oh My Zsh
curl -fsSL -o install-ohmyzsh.sh https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
chmod +x install-ohmyzsh.sh
# Oh My Zsh install options
su "$LOGNAME" -c "./install-ohmyzsh.sh --unattended"
rm -f ./install-ohmyzsh.sh

# Oh My Zsh Plugins
git clone https://github.com/zsh-users/zsh-autosuggestions "$ZSH/custom/plugins/zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$ZSH/custom/plugins/zsh-syntax-highlighting"

# Oh My Zsh Theme (Powerlevel10k)
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$ZSH/custom/themes/powerlevel10k"

# Activate theme
sed -i "s/^ZSH_THEME=\(.*\)/\# ZSH_THEME=\1/g" "$ZSHRCFILE"
sed -i "/^\# ZSH_THEME=\(.*\)/a ZSH_THEME=\"powerlevel10k/powerlevel10k\"" "$ZSHRCFILE"

# Activate plugins
sed -i "s/^plugins=\(.*\)/\# plugins=\1/g" "$ZSHRCFILE"
sed -i "/^\# plugins=\(.*\)/a plugins=\(git zsh-autosuggestions zsh-syntax-highlighting\)" "$ZSHRCFILE"

# Add aliases
mkdir "$OHMYZSHFOLDER/plugins/manjaro-dotfiles"
cp -rf "$ALIASESDIR/git.conf" "$OHMYZSHFOLDER/plugins/manjaro-dotfiles/git.zsh"
cp -rf "$ALIASESDIR/pacman.conf" "$OHMYZSHFOLDER/plugins/manjaro-dotfiles/pacman.zsh"
cp -rf "$ALIASESDIR/uuid.conf" "$OHMYZSHFOLDER/plugins/manjaro-dotfiles/uuid.zsh"

# Setting Zsh as shell for user
chsh -s /bin/zsh $LOGNAME
