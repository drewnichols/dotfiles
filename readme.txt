Setting up this macbook pro...

# Following instructions found here: 
http://mattstauffer.co/blog/setting-up-a-new-os-x-development-machine-part-2-global-package-managers

After finishing OSX installer screens...
Open System Preferences / Sharing -> Changed computer name to MPGMBP2
Open AppStore, Install XCode

    # Install xcode developer tools (via terminal)  
    xcode-select --install
    # Agree to xcode developer license
    sudo  xcodebuild -license
    # Install homebrew
    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

    # Run brew doctor to make sure everything is ok
    brew doctor

    # Configure git
    git config --global user.name "mikegrassotti"
    git config --global user.email "mgrassotti@gmail.com"

    brew bundle
    
    echo "run github for mac app (installed via brew bundle) and complete setup"
    echo "run heroku auth:login" to setup credentials

    # IE8 - XP
    curl -O "https://az412801.vo.msecnd.net/vhd/IEKitV1_Final/VirtualBox/OSX/IE8_XP/IE8.XP.For.MacVirtualBox.ova"
    # IE9 - Win7
    curl -O "https://az412801.vo.msecnd.net/vhd/IEKitV1_Final/VirtualBox/OSX/IE9_Win7/IE9.Win7.For.MacVirtualBox.part{1.sfx,2.rar,3.rar,4.rar,5.rar}"
    # IE10 - Win8
    curl -O "https://az412801.vo.msecnd.net/vhd/IEKitV1_Final/VirtualBox/OSX/IE10_Win8/IE10.Win8.For.MacVirtualBox.part{1.sfx,2.rar,3.rar}" 


    # now brew doctor tells us we need to update bash_profile to prefer brew installs
    echo export PATH='/usr/local/bin:$PATH' >> ~/.bash_profile

    # Install oh-my-zsh
    curl -L http://install.ohmyz.sh | sh

    # Customize zsh so nvm will work by adding this to end of .zshrc
    export NVM_DIR=~/.nvm
    source $(brew --prefix nvm)/nvm.sh

    # Install latest version of node and set as default
    nvm install 0.10
    nvm alias default 0.10

    # Install npm packages needed for ember-cli
    npm install -g bower
    npm install -g phantomjs

    ln -s ~/Dropbox/.ssh-config ~/.ssh/config

    #Wait maybe use fresh instead of oh-my-zsh

    # open http://robots.thoughtbot.com/rcm-for-rc-files-in-dotfiles-repos



    # thinking about what casks I need to install. will revisit later
    # https://gist.github.com/zenorocha/7159780
    
    # TODO: 
    #  Have a look at https://github.com/thoughtbot/rcm

 Check out some of these apps: https://gist.github.com/zenorocha/7159780

