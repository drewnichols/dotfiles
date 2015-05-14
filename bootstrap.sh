# Stuff that probably should just be run once per laptop

- [x] Install xcode developer tools (via terminal) or skip and install via AppStore
xcode-select --install
- [ ] Either way agree to xcode developer license
sudo xcodebuild -license

- [x] Clone this repo
git clone https://github.com/mikegrassotti/dotfiles.git && cd dotfiles

- [x] Install oh-my-zsh
curl -L http://install.ohmyz.sh | sh

- [x] Install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

- [x] Run brew doctor to make sure everything is ok
brew doctor
- [ ] Install Brew Bundle
brew tap Homebrew/bundle
# Install libs and apps via brew bundle
brew bundle

# Customize zsh for nvm and chruby
echo export NVM_DIR=~/.nvm >> ~/.zshrc
echo source $(brew --prefix nvm)/nvm.sh >> ~/.zshrc
echo source /usr/local/opt/chruby/share/chruby/chruby.sh >> ~/.zshrc
echo source /usr/local/opt/chruby/share/chruby/auto.sh >> ~/.zshrc
echo eval "$(direnv hook $0)" >> ~/.zshrc

# Install latest version of node and set as default
nvm install 0.10
nvm alias default 0.10

# Install latest version of ruby and set as default
ruby-install ruby
echo chruby ruby-2.1.3 >> ~/.zshrc

# Install global npm packages
npm install -g ember-cli
npm install -g bower
npm install -g phantomjs

# Install global ruby gems
gem install bundler
gem install rails
gem install gem-path
ARCHFLAGS="-arch x86_64" gem install pg

# Need some extra steps to get nokogiri installed...
brew tap homebrew/dupes
brew install libiconv
gem install nokogiri -- --with-iconv-dir=`brew --prefix libiconv`
