# install rosetta
/usr/sbin/softwareupdate --install-rosetta --agree-to-license

#install homebrew
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/drewnichols/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
brew Bundle

cd ~
ln -s ~/workspace/dotfiles .dotfiles
ln -s .dotfiles/zshrc .zshrc
ruby-install ruby-2.7.4

cd .dotfiles
gem install bundler

cd ~/workspace
gh auth
git clone http://github.com/liftforward/daas-service
cd daas-service
bundle install
