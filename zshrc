# echo "mikegrassotti/dotfiles/zshrc: **** START ****"
# echo "mikegrassotti/dotfiles/zshrc: Loading antigen..."
source /usr/local/share/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle Tarrasch/zsh-autoenv

export NVM_AUTO_USE=true
antigen bundle lukechilds/zsh-nvm

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme robbyrussell

# Tell antigen that you're done.
antigen apply

# echo "mikegrassotti/dotfiles/zshrc: Sourcing custom zsh configuration files..."
source ~/.dotfiles/zsh/secrets.zsh
source ~/.dotfiles/zsh/sources.zsh
source ~/.dotfiles/zsh/aliases.zsh
source ~/.dotfiles/zsh/exports.zsh
source ~/.dotfiles/zsh/setopt.zsh

# Initialize rbenv
#eval "$(rbenv init -)"

echo "~/.dotfiles/zshrc: **** COMPLETED ****"
