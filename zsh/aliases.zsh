# aliases and functions
alias c='clear'
function cd { builtin cd $1 && ls }
alias :='cd ..'
alias ::='cd ../..'
alias :::='cd ../../..'
alias co='git checkout'
alias cpwd="pwd | ruby -pe'\$_.chomp!' | pbcopy"
alias dbfl='rake db:fixtures:load'
alias dbmi='rake db:migrate'
alias dbre='rake db:migrate:reset'
alias diff='git diff'
alias g='git'
function gci { git ci -m "$*" }
alias gd='git diff | mate'
alias gp='git push'
alias gst='git status'
alias grep='grep --color --line-number '
alias h='history'
alias l='ls'
alias la='ls -laFh'
function pman() { man -t "${1}" | open -f -a /Applications/Preview.app }
alias md='mkdir'
alias mv='mv -i'
alias mysql='/opt/local/bin/mysql5 -u root --socket=/tmp/mysql.sock'
alias mysqladmin='/opt/local/bin/mysqladmin5 -u root --socket=/tmp/mysql.sock'
alias opera='open -a Opera http://localhost:3000'
alias opi='open ./public/images'
function photoshop { open -a Adobe\ Photoshop\ CS3 $* }
function preview { open -a Preview $* }
alias pull='git pull'
alias push='git push'

function pushed 
{
  if [ $@ ]; then
    git cherry -v origin/$@
  else
    git cherry -v origin
  fi
}

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

alias myconfig='cd ~/Projects/config'

alias sanky='cd ~/Projects/sankyinc'
alias igv='cd ~/Projects/igv'

alias expo='cd ~/Projects/expo'
alias sweetlabels='cd ~/Projects/sweet-labels'

alias clients='cd ~/Projects/edgecase/clients'
alias theedgecase_com='cd ~/Projects/edgecase/theedgecase.com'
alias toobla='cd ~/Projects/edgecase/clients/toobla'
alias scripsafe='cd ~/Projects/edgecase/clients/escriptsafe/scripsafe'
alias streamdeploy='cd ~/Projects/edgecase/clients/stream_deploy/streamdeploy'
alias diplomas='cd ~/Projects/edgecase/clients/diplomas'
alias prosper='cd ~/Projects/edgecase/prosper'
