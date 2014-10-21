# Stuff that probably should just be run once per laptop

# Install xcode developer tools (via terminal) or skip and install via AppStore
xcode-select --install
# Either way agree to xcode developer license
sudo xcodebuild -license

# Install oh-my-zsh
curl -L http://install.ohmyz.sh | sh

# Install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Run brew doctor to make sure everything is ok
brew doctor

# Clone this repo
git clone https://github.com/mikegrassotti/dotfiles.git && cd dotfiles

# Install libs and apps via brew bundle
brew bundle

# Customize zsh for nvm and chruby
echo export NVM_DIR=~/.nvm >> ~/.zshrc
echo source $(brew --prefix nvm)/nvm.sh >> ~/.zshrc
echo source /usr/local/opt/chruby/share/chruby/chruby.sh >> ~/.zshrc
echo source /usr/local/opt/chruby/share/chruby/auto.sh >> ~/.zshrc

# Install latest version of node and set as default
nvm install 0.10
nvm alias default 0.10

# Install latest version of ruby and set as default
ruby-install ruby 2.0
echo chruby ruby-2.0 >> ~/.zshrc





