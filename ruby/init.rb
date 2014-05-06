#!/bin/env ruby
#
# Initialization script for new OS X installation
# for version 10.9
#

# DO NOT RUN THIS SCRIPT UNDER ROOT USER
# todo: add logic to detect this case and abort if true

### Configure system tools

# Create the file database used by 'locate', a command-line search utility
`sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.locate.plist`

### Install custom software

# Xcode and the Apple developer command line tools must be installed manually!
# https://github.com/kennethreitz/osx-gcc-installer#readme

# Homebrew
`ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"`

# Install libraries with Homebrew
libs = %w[
  wget
  gcc48
  gdbm
  libffi
  libyaml
  openssl
  readline
]
`brew tap homebrew/versions`
`brew install #{libs.join(' ')}`
