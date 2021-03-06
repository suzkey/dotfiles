#!/bin/sh

# macOS
ln -sf ~/.dotfiles/.vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -sf ~/.dotfiles/.vscode/keybindings.json ~/Library/Application\ Support/Code/User/settings.json

# install vscode extensions from extensions list file
cat ~/.dotfiles/vscode/extensions | xargs -L1 code --install-extension
