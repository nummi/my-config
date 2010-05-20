export PATH="/opt/local/lib/postgresql83/bin:/opt/local/bin:/bin:/sbin:/usr/bin:/usr/sbin:/sw/bin:/usr/local/bin:/usr/local/mysql/bin:/usr/local/mongodb/bin"
export CDPATH=$CDPATH:~/Projects:~/Projects/edgecase:~/Projects/edgecase/clients

export RUBYOPT='rubygems -Itest'
export GIT_EDITOR="vim"
export EDITOR="mvim"
export JAVA_HOME='/System/Library/Frameworks/JavaVM.framework/Home'
if [[ $TERM != 'dumb' ]]; then
  export TERM=xterm-color;
fi

export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad
export ARCHFLAGS='-arch x86_64'
