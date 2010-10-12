alias :="cd .."
alias ::="cd ../.."
alias :::="cd ../../.."

alias c='clear'
alias cpwd="pwd | ruby -pe'\$_.chomp!' | pbcopy" # copy path to clipboard
alias grep='grep --color --line-number'
alias la='ls -laF' # include dot files in listing
alias mv='mv -i'   # prompt before moving a file that would overwrite an existing file

alias opi='open public/images'


# Databses

# alias mysql='/usr/local/bin/mysql -u root --socket=/tmp/mysql.sock'
# alias mysqladmin='/usr/local/bin/mysqladmin -u root --socket=/tmp/mysql.sock'
# alias mysql_config='/usr/local/bin/mysql_config'
alias postgres_start='pg_ctl -D ~/.pgdata -l ~/.pgdata/psql.log start'
alias postgres_stop='pg_ctl -D ~/.pgdata stop'


# Rails

alias rmate='mate app config doc db features lib public script spec test stories liquid'
alias restart='touch tmp/restart.txt'

alias rc='./script/rails console'
alias rg='./script/rails generate'
alias rs='./script/rails server'

alias sc='./script/console'
alias sg='./script/generate'
alias sp='./script/spec -cfs'
alias ss='./script/server'
alias ssd='./script/server --debugger'


# Git

alias gitrm='git ls-files --deleted | xargs git rm'
alias gitx='gitx --all'
alias push='git push'
alias st='clear; git status'
