alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias zzz="source ~/.zshrc"
alias e="ember"
#alias deletemerged='git branch --merged | egrep -v "(^\*|master|dev|release)" | xargs git branch -d'
#alias deletemerged="fetch -p && for branch in $(git for-each-ref --format '%(refname) %(upstream:track)' refs/heads | awk '$2 == \"[gone]\" {sub(\"refs/heads/\", \"\", $1); print $1}'); do git branch -D $branch; done"
#alias rebaseall="for branch in $(git remote show origin | grep 'local out of date' | cut -d ' ' -f 5); do git checkout $branch; git rebase; done"
alias guard="bundle exec guard"
alias rake="bundle exec rake"
