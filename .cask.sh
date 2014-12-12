#!/bin/sh

# Core Functionality
echo Installing core apps
brew cask install --appdir="/Applications" alfred
brew cask install --appdir="/Applications" dropbox
brew cask install --appdir="/Applications" google-drive
brew cask install --appdir="~/Applications" iterm2
brew cask install --appdir="~/Applications" time-out
brew cask install --appdir="~/Applications" vlc

# Development apps
echo Installing dev apps
brew cask install --appdir="/Applications" adobe-creative-cloud
brew cask install --appdir="/Applications" sublime-text
brew cask install --appdir="/Applications" imagealpha
brew cask install --appdir="/Applications" imageoptim
brew cask install --appdir="/Applications" remote-desktop-connection
brew cask install --appdir="/Applications" vagrant
brew cask install --appdir="/Applications" virtualbox

# Browsers
echo Installing browsers
brew cask install --appdir="/Applications" firefox
brew cask install --appdir="/Applications" firefox-nightly
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" google-chrome-canary

# Additional apps
echo Installing some additional apps
brew cask install --appdir="/Applications" appcleaner
brew cask install --appdir="/Applications" spotify
brew cask install --appdir="/Applications" tunnelbear
brew cask install --appdir="/Applications" utorrent

# Linking Cask apps to Alfred
echo Linking apps to Alfred
brew cask alfred link

# cleanup
echo Cleaning up
brew cleanup --force

rm -f -r /Library/Caches/Homebrew/*
