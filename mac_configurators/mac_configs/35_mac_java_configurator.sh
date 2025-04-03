#!/bin/sh

brew update
# jenv
brew install jenv
# Install latest Azul Java
brew install --cask zulu
# Intellij CE
brew install --cask intellij-idea-ce
# Maven
brew install maven
# Java Homes
jvms
