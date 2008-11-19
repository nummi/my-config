alias :='cd ..'
alias ::='cd ../..'
alias :::='cd ../../..'
alias c='clear'
alias cpwd="pwd | ruby -pe'\$_.chomp!' | pbcopy"
alias dbfl='rake db:fixtures:load'
alias dbmi='rake db:migrate'
alias diff='git diff'
alias g='git'
alias gd='git diff | mate'
alias grep='grep --color --line-number '
alias la='ls -laFh'
alias mv='mv -i'
alias mysql='/opt/local/bin/mysql5 -u root' # --socket=/tmp/mysql.sock
alias mysqladmin='/opt/local/bin/mysqladmin5 -u root' # --socket=/tmp/mysql.sock
alias mysqlstart='sudo /opt/local/bin/mysqld_safe5 &'
alias mysqlstop='/opt/local/bin/mysqladmin5 -u root -p shutdown'
alias opi='open ./public/images'
alias pull='git pull'
alias push='git push'
alias pushed\?='pushed'
alias rc='rake cruise'
alias restart='reload'
alias ri='ri -Tf ansi'
alias rmate='mate app config doc db lib public script spec test stories liquid'
alias rrr="rake db:migrate && rake db:rollback && rake db:migrate"
alias sc='./script/console'
alias sfl='rake spec:db:fixtures:load'
alias sp='./script/spec -cfs'
alias ss='./script/server'
alias st='git status'
alias sudo='nocorrect sudo'


# SHORTCUTS

alias projects='cd ~/Projects'
alias webserver='cd /Library/WebServer/Documents'

# personal
alias myconfig='cd ~/Projects/config'
alias expo='cd ~/Projects/expo'
alias sweetlabels='cd ~/Projects/sweet-labels'

# sanky
alias sanky='cd ~/Projects/sankyinc'

# igv
alias igv='cd ~/Projects/igv'

# q1
alias q1='cd ~/Projects/q1'
alias gca_stats='cd ~/Projects/q1/gca_stats'

# edgecase
alias theedgecase_com='cd ~/Projects/edgecase/theedgecase.com'
alias prosper='cd ~/Projects/edgecase/prosper'
alias clients='cd ~/Projects/edgecase/clients'
alias toobla='cd ~/Projects/edgecase/clients/toobla'
alias scripsafe='cd ~/Projects/edgecase/clients/escriptsafe/scripsafe'
alias streamdeploy='cd ~/Projects/edgecase/clients/stream_deploy/streamdeploy'
alias diplomas='cd ~/Projects/edgecase/clients/diplomas'
alias transcripts='cd ~/Projects/edgecase/clients/transcripts'
alias wildresearch='cd ~/Projects/edgecase/clients/wildresearch'
