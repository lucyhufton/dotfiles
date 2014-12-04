#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install Git
echo Installing Git
brew install git

# Install Node.js. Note: this installs `npm` too, using the recommended installation method.
echo Installing Node && npm
brew install node

# Install Brew Cask for managing other apps.
echo Installing Brew Cask
brew install brew-cask

# Remove outdated versions from the cellar.
brew cleanup  --force
