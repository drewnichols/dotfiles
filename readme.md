# Dotfiles

# Setting up a new workstation
 
 Our new machine setup script is based on strap https://github.com/mikemcquaid/strap. It assumes you don't have git or any tooling installed and that you've already forked [our default dotfiles repo](https://github.com/mikegrassotti/dotfiles) to become your dotfiles repo. 
 
 1. Fork https://github.com/mikegrassotti/dotfiles unless you have your own dotfiles. If you do STOP and let's figure this out.
 1. Review
 1. Visit https://osx-strap.herokuapp.com/ and use this to generate a strap script customized for your github user. 
 1. run the script
 ```
 cd Downloads
 bash bin/strap.sh
 ```

This script will automatically download your dotfiles repo then run it's script/setup.sh script.
It will also download and run your brew bundle file if you have one in /{gituser}/homebrew-brewfile/Brewfile

Notes and issues
 - had to remove git credentials from the osx keychain
 
 
