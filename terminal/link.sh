#!bin/bash

# Symlink dotfiles
## ZSH
ln -s ~/git/dotfiles/terminal/zsh/.zshrc ~/.zshrc

## Kitty
ln -s ~/git/dotfiles/terminal/kitty/kitty.conf ~/.config/kitty/kitty.conf
ln -s ~/git/dotfiles/terminal/kitty/kitty-themes.conf ~/.config/kitty/kitty-themes.conf
cp ~/git/dotfiles/terminal/kitty/kitty.app.png ~/.config/kitty/kitty.app.png
rm /var/folders/*/*/*/com.apple.dock.iconcache; killall Dock

## LunarVim
ln -s ~/git/dotfiles/terminal/lunarvim/config.lua  ~/.config/lvim/config.lua
