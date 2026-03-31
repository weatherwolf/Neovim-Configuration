@echo off

echo Hello World

set current_location=%~dp0

echo current location: %current_location%

:: git clone
git clone https://github.com/weatherwolf/Neovim-Configuration
move Neovim-Configuration\init.lua .
move Neovim-Configuration\lazy-lock.json .
rd /s /q Neovim-Configuration
