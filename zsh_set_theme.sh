#!/bin/bash

# Define the theme configuration (Powerlevel10k Theme)
THEME_SETTING='ZSH_THEME="powerlevel10k/powerlevel10k"'
ZSHRC_FILE="$HOME/.zshrc"

# Check if the .zshrc file contains any theme setting
if grep -q "^ZSH_THEME=" "$ZSHRC_FILE"; then
    # Replace the existing theme setting
    sed -i "/^ZSH_THEME=/c\\$THEME_SETTING" "$ZSHRC_FILE"
    echo "Theme has been replaced."
else
    # Append the theme setting to .zshrc
    echo "$THEME_SETTING" >> "$ZSHRC_FILE"
    echo "Theme has been added."
fi
