# Stuff that probably should just be run once per laptop

- [x] Install xcode developer tools (via terminal) or skip and install via AppStore
xcode-select --install

- [x] Clone this repo
git clone https://github.com/mikegrassotti/dotfiles.git && cd dotfiles

- [x] Install oh-my-zsh
curl -L http://install.ohmyz.sh | sh

- [x] Install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

- [x] Run brew doctor to make sure everything is ok
brew doctor
- [x] Install Brew Bundle
brew tap Homebrew/bundle
- [x] Install Brew Bundle
brew bundle

- [x] Install latest version of node and set as default
nvm install 0.12
nvm alias default 0.12

- [x] Install latest version of ruby and set as default
ruby-install ruby

- [x] Install global npm packages
npm install -g ember-cli
npm install -g bower
npm install -g phantomjs

- [x] Install global ruby gems
gem install bundler
gem install rails
gem install gem-path
gem install pg
# nokogiri depends on a brew package ...
gem install nokogiri -- --with-iconv-dir=`brew --prefix libiconv`
