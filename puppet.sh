#! /bin/bash

wget http://downloads.puppetlabs.com/mac/PC1/puppet-agent-1.2.4-1.yosemite.dmg
sudo hdiutil mount puppet-agent-1.2.4-1.yosemite.dmg
sudo installer -pkg /Volumes/puppet-agent-1.2.4-1.yosemite/puppet-agent-1.2.4-1-installer.pkg -target /
rm -f puppet-agent-1.2.4-1.yosemite.dmg

export PATH=$PATH:/opt/puppetlabs/bin
