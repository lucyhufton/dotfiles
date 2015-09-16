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

dscl . -create /Users/admin
dscl . -create /Users/admin UserShell /bin/bash
dscl . -create /Users/admin RealName "admin"
dscl . -create /Users/admin UniqueID "1010"
dscl . -create /Users/admin PrimaryGroupID 80
dscl . -create /Users/admin NFSHomeDirectory /Users/admin
dscl . -passwd /Users/luser lc1208
dscl . -append /Groups/admin GroupMembership admin
