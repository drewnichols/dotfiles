# Dotfiles

Something like this process should get new laptop working...

## Checklist

### Install xcode developer tools (via terminal) or skip and install via AppStore

    xcode-select --install

### Clone (or fork) this repo and add symlinks

    cd ~
    git clone https://github.com/mikegrassotti/dotfiles.git
    ln -s dotfiles/vimrc .vimrc
    ln -s dotfiles/zshrc .zshrc
    # maybe add more link ackrc, tmux, etc...
    cd dotfiles

### Install oh-my-zsh

    curl -L http://install.ohmyz.sh | sh

### Symlink these files from your home directory to use dotfiles version


### Install homebrew
   
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

### Run brew doctor to make sure everything is ok
    brew doctor

### Install Brew Bundle and all the apps listed in Brewfile
     
    brew tap Homebrew/bundle
    brew bundle

### Install latest version of node and set as default
nvm install 0.12
nvm alias default 0.12

### Install ruby and some gems
````
# Install latest version of ruby and set as default
ruby-install ruby

# Install global npm packages
npm install -g ember-cli
npm install -g bower
npm install -g phantomjs

# Install global ruby gems
gem install bundler
gem install rails
gem install gem-path
gem install pg
# nokogiri depends on a brew package ...
gem install nokogiri -- --with-iconv-dir=`brew --prefix libiconv`
````


# 
