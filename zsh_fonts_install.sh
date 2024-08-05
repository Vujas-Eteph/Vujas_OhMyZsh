#!/bin/bash

# Define the URLs of the fonts
declare -A FONT_URLS
FONT_URLS["MesloLGS NF Regular.ttf"]="https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf"
FONT_URLS["MesloLGS NF Bold.ttf"]="https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf"
FONT_URLS["MesloLGS NF Italic.ttf"]="https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf"
FONT_URLS["MesloLGS NF Bold Italic.ttf"]="https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf"

# Define the destination directory
FONT_DIR="$HOME/.local/share/fonts"

# Create the directory if it doesn't exist
mkdir -p "$FONT_DIR"

# Download each font
for font_file in "${!FONT_URLS[@]}"; do
    font_url="${FONT_URLS[$font_file]}"
    echo "Downloading $font_file..."
    wget -O "$FONT_DIR/$font_file" "$font_url"
done

# Update font cache
fc-cache -f -v

echo "Fonts installed successfully."
