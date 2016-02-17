
## Quick notes about stuff I've setup manually, maybe want to do again

Fetch preview images for any .webloc icons on desktop
brew install setWeblocThumb
setWeblocThumb -a ~/Desktop


# Pretty and more useful git diffs
npm install -g diff-so-fancy
git config --global core.pager "diff-highlight | diff-so-fancy | less --tabs=1,5 -R"
