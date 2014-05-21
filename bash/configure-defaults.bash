#!/bin/bash
#
# Customizations for Mac OS X 10.9+ (Mavericks)

# Disable the dock, except when using Spaces
# source: http://www.lifehacker.com.au/2012/09/how-to-disable-the-dock-in-mountain-lion/
defaults write com.apple.dock autohide-delay -float 1000 && killall Dock

# Disable the dashboard permanently
# source: http://www.macworld.com/article/1046236/disabledashboard.html
defaults write com.apple.dashboard mcx-disabled -boolean YES; killall Dockw