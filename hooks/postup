# Install system software
# Assumes commands in bootstrap.sh have been run on this machine
# Make sure anything added here can be run more than once

echo "Installing homebrew bundle..."
brew bundle

# Install npm packages needed for ember-cli
echo "Installing npm packages..."
npm install -g bower
npm install -g phantomjs

echo "Installing PIP packages..."
pip install git-sweep

echo "Installing symlinks..."
# Use ssh-config from dropbox
ln -s ~/Dropbox/.ssh-config ~/.ssh/config

echo "Install completed"
