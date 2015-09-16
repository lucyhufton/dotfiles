#!/usr/bin/env bash

bash .brew.sh
bash .cask.sh
bash .init.sh
bash .osx.sh

rm -f .brew.sh .cask.sh .init.sh .osx.sh setup.sh
