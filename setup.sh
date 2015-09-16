#!/usr/bin/env bash

bash .brew.sh
bash .cask.sh
bash .init.sh
bash .mkdir.sh
bash .osx.sh

wget http://downloads.puppetlabs.com/mac/PC1/puppet-agent-1.2.4-1.yosemite.dmg
hdiutil mount /Users/admin/downloads/puppet-agent-1.2.4-1.yosemite.dmg
sudo installer -pkg /Volumes/
hdiutil unmount puppet-agent-1.2.4-1.yosemite.dmg
rm -f /Users/admin/downloads/puppet-agent-1.2.4-1.yosemite.dmg

mv /Users/admin/Downloads/dotfile.master/* ~/
