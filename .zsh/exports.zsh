export ARCHFLAGS='-arch x86_64'
export CDPATH=$CDPATH:~/Projects:~/Projects/edgecase:~/Projects/edgecase/clients
export CLICOLOR=1
export EDITOR="mvim"
export GIT_EDITOR="mvim -v"
export JAVA_HOME='/System/Library/Frameworks/JavaVM.framework/Home'
export LSCOLORS=gxfxcxdxbxegedabagacad
export NODE_PATH="/usr/local/lib/node"
export PATH=/usr/local/bin:/usr/local/sbin:~/bin:$PATH
#export PATH=/usr/local/bin:/opt/local/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/sbin:/usr/local/share/npm/bin:/usr/local/git/bin:/Developer/usr/bin:/usr/local/Cellar:~/bin
export RUBYOPT='rubygems -Itest'
export PGDATA='/usr/local/var/postgres'

if [[ $TERM != 'dumb' ]]; then
  export TERM=xterm-color;
fi
