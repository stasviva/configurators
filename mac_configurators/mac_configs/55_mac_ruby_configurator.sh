#!/bin/sh
brew update
#Ruby Environment Manager
brew install rbenv
. ~/.bash_profile
rbenv init
. ~/.bash_profile
rbenv install 3.2.2
. ~/.bash_profile
rbenv global 3.2.2
. ~/.bash_profile
