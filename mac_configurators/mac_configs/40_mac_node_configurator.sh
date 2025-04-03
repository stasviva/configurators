#!/bin/sh

brew update
# Nvm
brew install nvm
cd ~ &&  mkdir .nvm
source ./~bash_profile
# Install the latest LTS version
nvm install --lts && nvm use --lts
source ./~bash_profile
# Ng : command not found
npm i -g @angular/cli
