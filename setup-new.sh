# install rosetta
git clone https://github.com/drewnichols/dotfiles.git .dotfiles
./dotfiles/script/setup

/usr/sbin/softwareupdate --install-rosetta --agree-to-license
arch -x86_64 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


echo 'eval $(/usr/local/bin/brew shellenv)' >> /Users/andrewnichols/.zprofile
eval $(/opt/homebrew/bin/brew shellenv)

cd .dotfiles
brew Bundle
cd ~
ln -s .dotfiles/zshrc .zshrc
ruby-install ruby-2.7.2
gem install bundler
