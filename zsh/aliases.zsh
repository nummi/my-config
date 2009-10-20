alias :='cd ..'
alias ::='cd ../..'
alias :::='cd ../../..'

alias ack="ack-grep $1"

alias c='clear'
alias cpwd="pwd | ruby -pe'\$_.chomp!' | xclip"

alias diff='git diff'

alias gitrm='git ls-files --deleted | xargs git rm'
alias grep='grep --color --line-number '
alias gvim='mvim -p'

alias la='ls -laFh'

alias mv='mv -i'
alias mysql='mysql -u root'
alias mysqladmin='mysqladmin -u root' # --socket=/tmp/mysq
alias mysqlstart='sudo mysqld_safe &'
alias mysqlstop='mysqladmin -u root -p shutdown'

alias pull='clear; git pull'
alias push='clear; git push'
alias pushed\?='pushed'

alias sc='./script/console'
alias sp='./script/spec -cfs'
alias ss='./script/server'
alias st='clear; git status'
alias sudo='nocorrect sudo'

# personal
alias myconfig='cd ~/Projects/config'
alias paperactive='cd ~/Projects/paperactive'

# edgecase
alias diplomas='cd ~/Projects/edgecase/clients/diplomas';
alias scripsafe='cd ~/Projects/edgecase/clients/escriptsafe/scripsafe'
alias sideshooter='cd ~/Projects/edgecase/sideshooter'
alias streamdeploy='cd ~/Projects/edgecase/clients/streamdeploy'
alias transcripts='cd ~/Projects/edgecase/clients/transcripts'
