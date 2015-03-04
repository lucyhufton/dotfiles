# cask.sh

# Some apps rely on homebrew-versions - `brew tap caskroom/versions` is ran in `.brew.sh`

# Core Functionality
echo Installing core apps…
brew cask install --appdir="/Applications" alfred
brew cask install --appdir="/Applications" dropbox
brew cask install --appdir="/Applications" google-drive
brew cask install --appdir="/Applications" iterm2
brew cask install --appdir="/Applications" spectacle
brew cask install --appdir="/Applications" time-out
brew cask install --appdir="/Applications" vlc

# Development apps
echo Installing dev apps…
# brew cask install --appdir="/Applications" adobe-creative-cloud
# brew cask install --appdir="/Applications" atom
# brew cask install --appdir="/Applications" brackets
brew cask install --appdir="/Applications" color-oracle
brew cask install --appdir="/Applications" filezilla
brew cask install --appdir="/Applications" imagealpha
brew cask install --appdir="/Applications" imageoptim
brew cask install --appdir="/Applications" mamp # Cos you’ll need PHP SOME time…
brew cask install --appdir="/Applications" remote-desktop-connection
brew cask install --appdir="/Applications" sublime-text3
brew cask install --appdir="/Applications" sourcetree # Cos you’ll need a GUI SOME time…
brew cask install --appdir="/Applications" textwrangler
brew cask install --appdir="/Applications" vagrant
brew cask install --appdir="/Applications" virtualbox

# Browsers
echo Installing browsers…
brew cask install --appdir="/Applications" firefox
brew cask install --appdir="/Applications" firefox-nightly
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" google-chrome-canary
brew cask install --appdir="/Applications" opera

# Additional apps
echo Installing some additional apps…
brew cask install --appdir="/Applications" appcleaner
brew cask install --appdir="/Applications" spotify
brew cask install --appdir="/Applications" tunnelbear
# brew cask install --appdir="/Applications" utorrent


# Linking Cask apps to Alfred
echo Linking apps to Alfred…
brew cask alfred link

# cleanup
echo Cleaning up…
brew cleanup --force

rm -f -r /Library/Caches/Homebrew/*
