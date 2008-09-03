#commands
alias c='clear'
function cd { builtin cd $1 && ls }
alias :='cd ..'
alias ::='cd ../..'
alias :::='cd ../../..'
alias co='git checkout'
alias cpwd="pwd | ruby -pe'\$_.chomp!' | pbcopy"
alias dbfl='rake db:fixtures:load'
alias dbmi='rake db:migrate'
alias diff='git diff'
alias ff='open -a firepoo http://localhost:3000'
alias fixl='rake db:fixtures:load'
alias g='git'
function gci { git ci -m '$*' }
alias gd='git diff | mate'
alias gp='git push'
alias gst='git status'
alias grep='grep --color --line-number '
alias h='history'
alias l='ls'
alias la='ls -laFh'
alias lsall='ls -lafh'
function pman() { man -t "${1}" | open -f -a /Applications/Preview.app }
alias md='mkdir'
alias migrate='rake db:migrate'
alias mv='mv -i'
alias mysql='/opt/local/bin/mysql5 -u root --socket=/tmp/mysql.sock'
alias mysqladmin='/opt/local/bin/mysqladmin5 -u root --socket=/tmp/mysql.sock'
alias opi='open ./public/images'
function photoshop { open -a Adobe\ Photoshop\ CS3 $* }
function preview { open -a Preview $* }
alias pull='git pull'
alias push='git push'
alias pushed\?='git cherry -v origin'
alias rc='rake cruise'
function reload() { touch tmp/restart.txt }
alias restart='reload'
alias ri='ri -Tf ansi'
alias rmate='mate app config doc db lib public script spec test stories liquid'
alias rrr="rake db:migrate && rake db:rollback && rake db:migrate"
alias safari='open -a Safari http://localhost:3000'
alias sc='./script/console'
alias sfl='rake spec:db:fixtures:load'
alias sp='./script/spec -cfs'
alias ss='./script/server'
alias st='git status'
alias sudo='nocorrect sudo'


#shortcuts
alias webserver='cd /Library/WebServer/Documents'
alias projects='cd ~/Projects'

alias myconfig='cd /Users/nummi/Projects/config'

alias sanky='cd ~/Projects/sankyinc'
alias igv='cd ~/Projects/igv'

alias expo='cd ~/Projects/expo'

alias clients='cd ~/Projects/edgecase/clients'
alias theedgecase_com='cd ~/Projects/edgecase/theedgecase.com'
alias toobla='cd ~/Projects/edgecase/clients/toobla/toobla'
alias scripsafe='cd /Users/nummi/Projects/edgecase/clients/escriptsafe/scripsafe'
alias streamdeploy='cd ~/Projects/edgecase/clients/stream_deploy/streamdeploy'
alias diplomas='cd /Users/nummi/Projects/edgecase/clients/diplomas'
alias prosper='cd /Users/nummi/Projects/edgecase/prosper'
