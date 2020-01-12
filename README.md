# Manjaro Dotfiles

Dotfiles for Manjaro installations

Enables AUR

Ensures the following packages are installed:

- FileZilla
- Google Chromium Browser
- Insomnia REST Client
- Libre Office
- Oh My Zsh
- Oh My Zsh plugin: autosuggestions
- Oh My Zsh plugin: syntaxhighlighting
- Oh My Zsh theme: powerlevel9k
- Pamac
- PHPStorm
- Powerline Fonts
- Slack
- Snap
- UFW
  - Allows ssh
- Xournal
- Zsh

Contains .env.example file with common environment variables. This file will be copied to .env during init, so that custom environment variables can be added by the user.

The file VERSION.CURRENT contains the current version number, and will be copied to VERSION after successful install / upgrade. The VERSION file is ignored, and MUST NOT be removed or edited.
