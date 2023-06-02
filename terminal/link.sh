#!bin/bash

# Symlink dotfiles
## ZSH
ln -s ~/git/dotfiles/base/zsh/.zshrc ~/.zshrc
ln -s ~/git/dotfiles/base/kitty/.zshenv ~/.zshenv

## Kitty
ln -s ~/git/dotfiles/base/kitty/kitty.conf ~/.config/kitty/kitty.conf
ln -s ~/git/dotfiles/base/kitty/kitty-themes.conf ~/.config/kitty/kitty-themes.conf
