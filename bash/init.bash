#!/bin/bash
#
# Initialization script for configuring a brand new installation of Mac OS X 10.9+
#
# DO NOT RUN THIS SCRIPT AS ROOT USER
# todo: add some code to prevent this
#

### Configure system tools

# Create the file database used by 'locate', a command-line search utility
sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.locate.plist

### Install custom software

# Xcode and the Apple developer command line tools must be installed manually!
# https://github.com/kennethreitz/osx-gcc-installer#readme

# Homebrew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

# If wget is missing, install it with Homewbrew
brew install wget

# Install libraries with Homebrew
brew tap homebrew/versions
brew install gcc48 gdbm libffi libyaml openssl readline