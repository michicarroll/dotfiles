# Sets reasonable OS X defaults.
#
# The original idea (and a couple of settings) were grabbed from:
#   https://github.com/mathiasbynens/dotfiles/blob/master/.osx
#
# Inspired by @holman's ./set-defaults.sh
#   https://github.com/holman/dotfiles/blob/master/osx/set-defaults.sh
#
# Run ./set-defaults.sh and you'll be good to go

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

# Use AirDrop over every interface
defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool true

# Show the ~/Library folder
chflags nohidden ~/Library

# Remove shadows from screenshots
defaults write com.apple.screencapture disable-shadow -bool true

# Disable the Dashboard
defaults write com.apple.dashboard mcx-disabled -bool true

# Make the caps lock key act as control
osascript $DOTFILES_DIR/osx/capslock-to-control.scpt

# Restart effected services
killall Dock
killall SystemUIServer
