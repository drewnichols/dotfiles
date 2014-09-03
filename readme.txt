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

    # now brew doctor tells us we need to update bash_profile to prefer brew installs
    echo export PATH='/usr/local/bin:$PATH' >> ~/.bash_profile

   
    # IE8 - XP
    curl -O "https://az412801.vo.msecnd.net/vhd/IEKitV1_Final/VirtualBox/OSX/IE8_XP/IE8.XP.For.MacVirtualBox.ova"

    # IE9 - Win7
    curl -O "https://az412801.vo.msecnd.net/vhd/IEKitV1_Final/VirtualBox/OSX/IE9_Win7/IE9.Win7.For.MacVirtualBox.part{1.sfx,2.rar,3.rar,4.rar,5.rar}"

    # IE10 - Win8
    curl -O "https://az412801.vo.msecnd.net/vhd/IEKitV1_Final/VirtualBox/OSX/IE10_Win8/IE10.Win8.For.MacVirtualBox.part{1.sfx,2.rar,3.rar}" 


    # Install oh-my-zsh
    curl -L http://install.ohmyz.sh | sh

    # thinking about what casks I need to install. will revisit later
    # https://gist.github.com/zenorocha/7159780
    
    # TODO: 
    #  Have a look at https://github.com/thoughtbot/rcm

 Check out some of these apps: https://gist.github.com/zenorocha/7159780

