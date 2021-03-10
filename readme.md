# Dotfiles

# Setting up a new m1 workstation

 1. install rosetta 2 
    ```
    /usr/sbin/softwareupdate --install-rosetta --agree-to-license
    ```
 1. start zsh using rosetta i86 emulation
    ```
    arch -i86_64 zsh
    ```
 1. clone dotfiles
    ```
    git clone https://github.com/drewnichols/dotfiles.git .dotfiles
    ```
 1. run setup script to install everything
    ```
    . ./dotfiles/script/setup
    ```
 1. `ruby-install ruby-2.7.2`
