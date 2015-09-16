# cask.sh

# Some apps rely on homebrew-versions - `brew tap caskroom/versions` is ran in `.brew.sh`

# Core Functionality
brew cask install --appdir="/Applications" spectacle

# Browsers
brew cask install --appdir="/Applications" firefox
brew cask install --appdir="/Applications" google-chrome

# brew cask install --appdir="/Applications" cord # Uncomment if you want this instead of RCD
brew cask install --appdir="/Applications" imageoptim
# brew cask install --appdir="/Applications" mamp # Cos you’ll need it SOME time…
brew cask install --appdir="/Applications" remote-desktop-connection # Comment this out if you want CoRD instead
# brew cask install --appdir="/Applications" sourcetree # Cos you’ll need a GUI SOME time…
brew cask install --appdir="/Applications" textwrangler
brew cask install --appdir="/Applications" vagrant

# cleanup
echo Cleaning up…
brew cleanup --force

rm -f -r /Library/Caches/Homebrew/*
