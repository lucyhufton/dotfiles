#!/usr/bin/env bash

mv 50-xdebug.ini /Library/Server/Web/Config/php/50-xdebug.ini`

bash brew.sh
bash cask.sh
bash init.sh
bash osx.sh
