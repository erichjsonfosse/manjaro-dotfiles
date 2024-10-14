#!/bin/bash

{
  printf "\n\n"
  printf "##### nvm init #####"
  printf "\n"
  printf "[ -z \"%s\" ] && export NVM_DIR=\"%s/.nvm\"" "$NVM_DIR" "$HOME"
  printf "\n"
  printf "source /usr/share/nvm/nvm.sh"
  printf "\n"
  printf "source /usr/share/nvm/bash_completion"
  printf "\n"
  printf "source /usr/share/nvm/install-nvm-exec"
  printf "\n"
  printf "##### nvm init #####"
  printf "\n"
} >> "$ZSHRCFILE"
