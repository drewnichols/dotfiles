# Sets reasonable OS X defaults.
#
#   Copied from https://github.com/kdaigle/dotfiles/blob/master/osx/set-defaults.sh
#
# Disable press-and-hold for keys in favor of key repeat.
# defaults write -g ApplePressAndHoldEnabled -bool false

# Use AirDrop over every interface. srsly this should be a default.
# defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

# Always open everything in Finder's list view. This is important.
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Show the ~/Library folder.
# chflags nohidden ~/Library

# Set a really fast key repeat.
# defaults write NSGlobalDomain KeyRepeat -int 0

# Set the Finder prefs for showing a few different volumes on the Desktop.
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Run Mission Control in the bottom left corner
# defaults write com.apple.dock wvous-bl-corner -int 2
# defaults write com.apple.dock wvous-bl-modifier -int 0

# Show Desktop in the top right corner
# defaults write com.apple.dock wvous-tr-corner -int 4
# defaults write com.apple.dock wvous-tr-modifier -int 0

# Show Screensaver in the bottom right corner
# defaults write com.apple.dock wvous-br-corner -int 5
# defaults write com.apple.dock wvous-br-modifier -int 0

# Hide Safari's bookmark bar.
# defaults write com.apple.Safari ShowFavoritesBar -bool false

# Set up Safari for development.
# defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
# defaults write com.apple.Safari IncludeDevelopMenu -bool true
# defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
# defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
# defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Load the theme for iTerm
# defaults read com.googlecode.iterm2 "Custom Color Presets" | grep -q "argonaut"
# if [ $? -eq 1 ]; then
#   open "${HOME}/.dotfiles/iterm2/argonaut.itermcolors"
# fi
# Warn if iterm2 preferences are not being loaded from dotfiles
defaults read com.googlecode.iterm2 "PrefsCustomFolder" | grep -q "${HOME}/.dotfiles/iterm2"
if [ $? -eq 1 ]; then
  echo "> ***** MANUAL INSTALLATION STEP REQUIRED ***** Set iTerm2 Preferences to load from '${HOME}/.dotfiles/iterm2'."
fi


