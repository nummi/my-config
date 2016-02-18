export ARCHFLAGS='-arch x86_64'
export CDPATH=$CDPATH:~/Projects:~/Projects/edgecase:~/Projects/mutuallyhuman:~/Projects/edgecase/clients
export CLICOLOR=1
export EDITOR="mvim"
export GIT_EDITOR="mvim -v"
export LSCOLORS=gxfxcxdxbxegedabagacad
export NODE_PATH="/usr/local/lib/node"
export PATH=/usr/local/bin:/usr/local/sbin:~/bin:/usr/local/opt/go/libexec/bin:$GOPATH/bin:$PATH
export GOPATH=$HOME/go
#export PATH=/usr/local/bin:/opt/local/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/sbin:/usr/local/share/npm/bin:/usr/local/git/bin:/Developer/usr/bin:/usr/local/Cellar:~/bin
export RUBYOPT='rubygems -Itest'
export PGDATA='/usr/local/var/postgres'

export RAILS_SECRET_TOKEN='sooper_secure'

export TAHI='/Users/nummi/Projects/edgecase/clients/tahi'

if [[ $TERM != 'dumb' ]]; then
  export TERM=xterm-color;
fi

export WEBDRIVER_TARGET_URL='https://aperta:plostest@staging.tahi-project.org'

export SELENIUM_FIREFOX_PATH=/Users/nummi/Applications/Firefox.app/Contents/MacOS/firefox
