alias c='clear'
alias compile='git push origin master; git push heroku master'
alias cpwd="pwd | ruby -pe'\$_.chomp!' | pbcopy" # copy path to clipboard
alias la='ls -laF' # include dot files in listing
alias mv='mv -i'   # prompt before moving a file that would overwrite an existing file

# Databses

alias mysql='/usr/local/bin/mysql -u root --socket=/tmp/mysql.sock'
alias mysqladmin='/usr/local/bin/mysqladmin -u root --socket=/tmp/mysql.sock'
alias mysql_config='/usr/local/bin/mysql_config'
alias pg_start='pg_ctl -l /usr/local/var/postgres/server.log start'
alias pg_status='pg_ctl status'
alias pg_stop='pg_ctl stop -s -m fast'

# Rack

alias ru='bundle exec rackup config.ru'

# Rails

alias be='bundle exec'
alias oai='open app/assets/images'
alias opi='open public/images'
alias rc='bundle exec rails c'
alias rg='bundle exec rails g'
alias rs='bundle exec rails s'

# Git

alias gitrm='git ls-files --deleted | xargs git rm'
alias gitx='gitx --all'
alias push='git push'
alias st='clear; git status'

# history
alias sudo='sudo ' # allow running sudo against an alias
alias redo='`cat $HOME/.zsh_history | tail -n2 | head -n1`' # run last command again
alias now='sudo redo' # I meant sudo on that last command
