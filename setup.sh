#!/usr/bin/bash

if command -v nvim &> /dev/null; then
    echo "Neovim is already installed: $(nvim --version | head -1)"
else
    echo "Neovim not found. Installing..."
    sudo apt update
    sudo apt install -y neovim
    echo "Neovim installed: $(nvim --version | head -1)"
fi

mkdir -p ~/.config/nvim

git clone --depth=1 --branch main https://github.com/weatherwolf/Neovim-Configuration </dev/null
mv Neovim-Configuration/init.lua ~/.config/nvim/
mv Neovim-Configuration/lazy-lock.json ~/.config/nvim/
rm -rf Neovim-Configuration
