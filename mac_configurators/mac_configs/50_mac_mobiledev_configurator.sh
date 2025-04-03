#!/bin/sh

brew update
###### iOS ######
# Cocoapods
brew install cocoapods
# Decentralized dependency manager for Cocoa
brew install carthage
###### ANDROID ######
# Android Platform Tools
brew install --cask android-platform-tools
# Android Studio
brew install --cask android-studio
# Android SDK
brew install --cask android-sdk
# Android NDK
brew install --cask android-ndk && 'export ANDROID_NDK_HOME="/usr/local/share/android-ndk"'
