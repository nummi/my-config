alias :='cd ..'
alias ::='cd ../..'
alias :::='cd ../../..'

alias c='clear'
alias cpwd="pwd | ruby -pe'\$_.chomp!' | pbcopy"

alias diff='git diff'

alias gitrm='git ls-files --deleted | xargs git rm'
alias grep='grep --color --line-number '
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
alias pushed\?='pushed'

alias rmate='mate app config doc db lib public script spec test stories liquid'

alias sc='./script/console'
alias sp='./script/spec -cfs'
alias ss='./script/server'
alias st='clear; git status'
alias sudo='nocorrect sudo'


# shortcuts
alias webserver='cd /Library/WebServer/Documents'

# personal
alias myconfig='cd ~/Projects/config'
alias paperactive='cd ~/Projects/paperactive'

# edgecase
alias diplomas='cd ~/Projects/edgecase/clients/diplomas';
alias scripsafe='cd ~/Projects/edgecase/clients/scripsafe'
alias sideshooter='cd ~/Projects/edgecase/sideshooter'
alias streamdeploy='cd ~/Projects/edgecase/clients/streamdeploy'
alias transcripts='cd ~/Projects/edgecase/clients/transcripts'
