#!/usr/bin/env bash

mv 50-xdebug.ini /Library/Server/Web/Config/php/50-xdebug.ini
sudo mkdir -p /Library/Server/Web/Config/php
sudo ln -s /usr/local/etc/php/5.5/conf.d/ext-mcrypt.ini /Library/Server/Web/Config/php/ext-mcrypt.ini
cat zend_extension=/usr/lib/php/extensions/no-debug-non-zts-20121212/xdebug.so >> /etc/php.ini.default
sudo mv /etc/php.ini.default /etc/php.ini

mkdir /ampersand/builds
mkdir /root/ssl/devserver.crt
mkdir /root/ssl/rapidssl.ca
mkdir /root/ssl/devserver.key

chmod 600 /root/ssl/devserver.key

bash brew.sh
bash cask.sh
bash init.sh
bash osx.sh
