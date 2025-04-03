#!/bin/sh

mkdir .config
brew update
# atom, visual-studio-code, sublime-text, diffmerge
brew install --cask atom &&  brew install --cask visual-studio-code  && brew install --cask sublime-text
#ConfigBundle, rectangle, maccy, itsycal, iterm2, git, numi, cpuinfo, flameshot, monitorcontrol, vcprompt,, coreutils, starship, zoxide, imagemagick
brew install --cask rectangle && brew install --cask maccy && brew install --cask itsycal && brew install --cask iterm2  && brew install --cask numi && brew install nikolaeu/numi/numi-cli && brew install --cask cpuinfo && brew install --cask flameshot && brew install --cask monitorcontrol && brew install vcprompt && brew install coreutils && brew install starship && brew install zoxide
