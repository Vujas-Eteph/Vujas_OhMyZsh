#!/bin/bash

# Define the plugins configuration
plugins_SETTING='plugins=(git python conda-env vscode tmux tmuxinator)'
ZSHRC_FILE="$HOME/.zshrc"

# Check if the .zshrc file contains any plugins setting
if grep -q "^plugins=" "$ZSHRC_FILE"; then
    # Replace the existing plugins setting
    sed -i "/^plugins=/c\\$plugins_SETTING" "$ZSHRC_FILE"
    echo "plugins have been replaced."
else
    # Append the plugins setting to .zshrc
    echo "$plugins_SETTING" >> "$ZSHRC_FILE"
    echo "plugins have been added."
fi
