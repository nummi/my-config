export ARCHFLAGS='-arch x86_64'
#export CC=/usr/bin/gcc-4.2
export CC=/usr/local/bin/gcc-4.2
export CDPATH=$CDPATH:/Applications/Xcode.app/Contents/Developer/usr/bin/
export CDPATH=$CDPATH:~/Projects:~/Projects/edgecase:~/Projects/edgecase/clients
export CLICOLOR=1
export EDITOR="mvim"
export GIT_EDITOR="vim"
export JAVA_HOME='/System/Library/Frameworks/JavaVM.framework/Home'
export LSCOLORS=gxfxcxdxbxegedabagacad
export NODE_PATH="/usr/local/lib/node"
export PATH=/usr/local/bin:/opt/local/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/sbin:/usr/local/share/npm/bin:/usr/local/git/bin:/Developer/usr/bin:/usr/local/Cellar:~/bin
export RUBYOPT='rubygems -Itest'

if [[ $TERM != 'dumb' ]]; then
  export TERM=xterm-color;
fi

export CFLAGS="-O2 -arch x86_64"
export LDFLAGS="-L/opt/local/lib"
export CPPFLAGS="-I/opt/local/include"
