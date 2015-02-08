#!/usr/bin/env bash

# Install command-line tools using Homebrew

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.brew.sh` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install Homebrew
echo Installing Homebrew \(gets Xcode cli developer tools too\)…
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install some utilities
brew install wget --with-iri
brew install lynx

# Install Git
echo Installing Git…
brew install git
# brew install git-extras # Debating whether this is that useful…
brew install git-flow

# Install Node.js - this installs `npm` too, using the recommended installation method
echo Installing Node…
brew install node

# echo Installing MongoDB…
# brew install mongodb

# Install Brew Cask for managing other apps
echo Installing Brew Cask…
brew install caskroom/cask/brew-cask

# Install Cask versions for beta version of apps :D
brew tap caskroom/versions
