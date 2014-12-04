#!/bin/sh

# Install Homebrew and set up apps
echo Installing Homebrew (gets Xcode cli developer tools too)
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# TODO: Move to a Caskfile.
# Core Functionality
echo Installing Core Apps
brew cask install --appdir="/Applications" alfred
brew cask install --appdir="/Applications" dropbox
brew cask install --appdir="/Applications" google-drive
brew cask install --appdir="~/Applications" iterm2
brew cask install --appdir="~/Applications" vlc

# Development
echo Installing dev apps
brew cask install --appdir="/Applications" adobe-creative-cloud
brew cask install --appdir="/Applications" sublime-text

# brew cask install --appdir="/Applications" imagealpha
# brew cask install --appdir="/Applications" imageoptim

# Browsers 
echo Installing browsers
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" firefox
# TODO: Canary and Nightly.

# Additional apps
echo Installing some additional apps
brew cask install --appdir="/Applications" appcleaner
brew cask install --appdir="/Applications" spotify

# Linking Cask apps to Alfred
echo Linking apps to Alfred
# TODO: fix this.
# brew cask alfred link

# cleanup
echo Cleaning up
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*

