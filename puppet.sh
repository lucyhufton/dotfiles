#! /bin/bash

wget http://downloads.puppetlabs.com/mac/PC1/puppet-agent-1.2.4-1.yosemite.dmg
sudo hdiutil mount puppet-agent-1.2.4-1.yosemite.dmg
sudo installer /Volumes/puppet-agent-1.2.4-1.yosemite/puppet-agent-1.2.4-1.yosemite.pkg -target /
rm -f puppet-agent-1.2.4-1.yosemite.dmg
sudo hdiutil unmount puppet-agent-1.2.4-1.yosemite.dmg

