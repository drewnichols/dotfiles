# export EXPERIAN_ETC_HOSTS_TEST=true
# export GOPATH=$HOME/code/go
# export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/bin"
# export PATH="/usr/local/heroku/bin:$PATH"
# export PATH=$PATH:$GOPATH/bin
export NVM_DIR="$HOME/.nvm"
# export PATH="./bin:$PATH"
export PATH="$HOME/.dotfiles/scripts:$PATH"

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on branch %b'

# export PS1='%2~ $(vcs_info_msg_0_)%# '
export PS1='%2~ %# '

export ALERT_DESTINATION='["drew@liftforward.com"]'
export LOAN_APP_ALERT_EMAIL_TO_ARRAY=$ALERT_DESTINATION
export NEW_USER_REGISTERED_ALERT_EMAIL=$ALERT_DESTINATION

# Fix NSCFConstantString initialize error in ruby WTF is that? 
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
