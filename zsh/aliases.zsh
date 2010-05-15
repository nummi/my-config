alias :='cd ..'
alias ::='cd ../..'
alias :::='cd ../../..'

alias ajaxrdoc="rdoc --fmt ajax --exclude '.*generator.*' --exclude '.*test.*' --exclude '.*spec.*'"

alias c='clear'
alias cpwd="pwd | ruby -pe'\$_.chomp!' | pbcopy"

alias devlog='tail -200 -f log/development.log'
alias diff='clear; git diff'

alias gfo='git fetch origin'
alias gitrm='git ls-files --deleted | xargs git rm'
alias gitx='gitx --all'
alias gvim='mvim -p'

alias la='ls -laFh'

alias monitor_http='sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E "Host\: .*|GET \/.*"'
alias mv='mv -i'
alias mysql='/usr/local/mysql/bin/mysql -u root' # --socket=/tmp/mysql.sock
alias mysqladmin='/usr/local/mysql/bin/mysqladmin -u root' # --socket=/tmp/mysql.sock
alias mysqlstart='sudo /usr/local/mysql/bin/mysqld_safe &'
alias mysqlstop='/usr/local/mysql/bin/mysqladmin -u root -p shutdown'

alias opi='open ./public/images'

alias pull='clear; git pull'
alias push='clear; git push'
alias pushed\?='pushed' # pushed() is defined in functions.zsh

alias restart='touch tmp/restart.txt'
alias rmate='mate app config doc db features lib public script spec test stories liquid'
alias rc='./script/rails console'
alias rg='./script/rails generate'
alias rs='./script/rails server'

alias sc='./script/console'
alias sp='./script/spec -cfs'
alias ss='./script/server'
alias st='clear; git status'

alias testlog='tail -200 -f log/test.log'
