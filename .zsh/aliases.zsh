alias c='clear'
alias compile='git push origin master; git push heroku master'
alias cpwd="pwd | ruby -pe'\$_.chomp!' | pbcopy" # copy path to clipboard
alias la='ls -laF' # include dot files in listing
alias mv='mv -i'   # prompt before moving a file that would overwrite an existing file

# Rack

alias ru='bundle exec rackup config.ru'

# Rails

alias be='bundle exec'
alias oai='open app/assets/images'
alias rc='bundle exec rails c'
alias rg='bundle exec rails g'
alias rs='bundle exec rails s'

# Git

alias gitrm='git ls-files --deleted | xargs git rm'
alias gitx='gitx --all'
alias st='clear; git status'

# history
alias sudo='sudo ' # allow running sudo against an alias
