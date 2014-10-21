# Stuff that probably should just be run once per laptop

# Install xcode developer tools (via terminal)
xcode-select --install
# Agree to xcode developer license
sudo  xcodebuild -license
# Install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Run brew doctor to make sure everything is ok
brew doctor

# seems like /usr/local/bin is already in path but if not
# brew doctor tells us we need to update bash_profile to prefer brew installs
# echo export PATH='/usr/local/bin:$PATH' >> ~/.bash_profile

# Install oh-my-zsh
curl -L http://install.ohmyz.sh | sh

# Customize zsh so nvm will work by adding this to end of .zshrc
echo export NVM_DIR=~/.nvm >> ~/.zshrc
echo source $(brew --prefix nvm)/nvm.sh >> ~/.zshrc

# Install latest version of node and set as default
nvm install 0.10
nvm alias default 0.10
