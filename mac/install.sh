#!/bin/bash

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Homebrew bundle
brew tap Homebrew/bundle

# Install Homebrew packages
brew bundle --file=~/git/dotfiles/mac/Brewfile