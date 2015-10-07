#!/usr/bin/env bash

# Install command-line tools using Homebrew

# Install Homebrew
echo Installing Homebrew \(gets Xcode cli developer tools too\)…
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
sudo xcodebuild -license

# Install some utilities
brew install wget --with-iri
brew install lynx
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew tap homebrew/versions
brew install bash-completion2

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen

# Install Git
echo Installing Git…
brew install git
brew install git-extras # Debating whether this is that useful…
brew install git-flow

# Install Node.js - this installs `npm` too, using the recommended installation method
echo Installing Node…
brew install node

echo Installing Imagemagick…
brew install imagemagick

# echo Installing Mysql
brew install mysql

# Install Brew Cask for managing other apps
echo Installing Brew Cask…
brew install caskroom/cask/brew-cask

# Install Cask versions for beta version of apps :D
brew tap caskroom/versions

# Install iproute
brew tap brona/iproute2mac
brew install iproute2mac

# Install mcrypt extensions

brew tap homebrew/php
brew install php55-mcrypt --without-homebrew-php
