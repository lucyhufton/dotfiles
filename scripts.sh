#!/usr/bin/env bash

mv 50-xdebug.ini /Library/Server/Web/Config/php/50-xdebug.ini
sudo mkdir -p /Library/Server/Web/Config/php
sudo ln -s /usr/local/etc/php/5.5/conf.d/ext-mcrypt.ini /Library/Server/Web/Config/php/ext-mcrypt.ini

bash brew.sh
bash cask.sh
bash init.sh
bash osx.sh
