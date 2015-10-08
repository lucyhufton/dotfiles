#!/usr/bin/env bash

mkdir /ampersand/builds
mkdir /root/ssl/devserver.crt
mkdir /root/ssl/rapidssl.ca
mkdir /root/ssl/devserver.key

chmod 600 /root/ssl/devserver.key

bash brew.sh
bash cask.sh
bash init.sh

sudo mkdir -p /Library/Server/Web/Config/php
sudo mv 50-xdebug.ini /Library/Server/Web/Config/php/50-xdebug.ini
echo zend_extension=/usr/lib/php/extensions/no-debug-non-zts-20121212/xdebug.so >> /etc/php.ini.default
sudo mv /etc/php.ini.default /etc/php.ini
sudo mkdir /ampersand/builds
find /ampersand -type d -exec chmod g+w {} \;

sudo mkdir /root
sudo mkdir /root/ssl
touch /root/ssl/devserver.crt
touch /root/ssl/devserver.key
touch /root/ssl/rapidssl.ca
chmod 600 /root/ssl/devserver.key

sudo apachectl restart
bash osx.sh
