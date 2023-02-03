#!/bin/bash

# Check if Homebrew is installed
if test ! $(which brew); then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Check if Homebrew bundle is installed
if test ! $(which brew-bundle); then
    echo "Installing Homebrew bundle..."
    brew tap Homebrew/bundle
fi

# Install Homebrew packages
brew bundle --file=~/git/dotfiles/mac/Brewfile

# Check if oh-my-zsh is installed
if test ! $(which zsh); then
    echo "Installing Oh My Zsh..."
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Check if GH CLI auth is set
if test ! $(gh auth status); then
    echo "Setting up GH CLI auth..."
    gh auth login
fi
