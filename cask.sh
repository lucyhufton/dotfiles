# cask.sh

# Some apps rely on homebrew-versions - `brew tap caskroom/versions` is ran in `.brew.sh`

# Core Functionality
brew cask install --appdir="/Applications" spectacle

# Browsers
brew cask install --appdir="/Applications" google-chrome

# brew cask install --appdir="/Applications" sourcetree # Cos you’ll need a GUI SOME time…
brew cask install --appdir="/Applications" textwrangler
brew cask install --appdir="/Applications" vagrant

# cleanup
echo Cleaning up…
brew cleanup --force

rm -f -r /Library/Caches/Homebrew/*
