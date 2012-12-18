alias c='clear'
alias compile='git push origin master; git push heroku master'
alias cpwd="pwd | ruby -pe'\$_.chomp!' | pbcopy" # copy path to clipboard
alias la='ls -laF' # include dot files in listing
alias mv='mv -i'   # prompt before moving a file that would overwrite an existing file

# Databses

alias mysql='/usr/local/bin/mysql -u root --socket=/tmp/mysql.sock'
alias mysqladmin='/usr/local/bin/mysqladmin -u root --socket=/tmp/mysql.sock'
alias mysql_config='/usr/local/bin/mysql_config'
alias postgres_start='pg_ctl -D ~/.pgdata -l ~/.pgdata/psql.log start'
alias postgres_stop='pg_ctl -D ~/.pgdata stop'

# Rack

alias ru='bundle exec rackup config.ru'

# Rails

alias be='bundle exec'
alias oai='open app/assets/images'
alias opi='open public/images'
alias rmate='mate app config doc db features lib public script spec test stories liquid'
alias restart='touch tmp/restart.txt'

# Git

alias gitrm='git ls-files --deleted | xargs git rm'
alias gitx='gitx --all'
alias push='git push'
alias st='clear; git status'
