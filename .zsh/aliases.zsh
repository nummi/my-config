alias c='clear'
alias cpwd="pwd | ruby -pe'\$_.chomp!' | pbcopy" # copy path to clipboard
alias la='ls -laF' # include dot files in listing
alias mv='mv -i'   # prompt before moving a file that would overwrite an existing file

# Rails

alias be='bundle exec'
alias rc='bundle exec rails c'
alias rg='bundle exec rails g'
alias rs='bundle exec rails s'

# Git

alias gitrm='git ls-files --deleted | xargs git rm'
alias gitx='gitx --all'
alias st='clear; git status'

# Git && Vim
alias resolve='mvim -p $(git diff --name-only --diff-filter=U | xargs)'

# history
alias sudo='sudo ' # allow running sudo against an alias
