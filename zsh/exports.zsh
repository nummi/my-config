# nummi: remember this is here ~Tom
export JRUBY_HOME=/opt/local/jruby/current
export PATH=$PATH:$JRUBY_HOME/bin

set_prompt () {
  export RPROMPT=$(project_name)$(git_prompt_info)
}
project_name () {
  name=$(pwd | awk -F'edgecase/clients/' '{print $2}' | awk -F/ '{print $1}')
  echo "%{\e[0;35m%}${name}%{\e[0m%}"
}
git_prompt_info () {
 ref=$(git-symbolic-ref HEAD 2> /dev/null) || return
 echo "(%{\e[0;33m%}${ref#refs/heads/}%{\e[0m%})"
}
precmd() {
  set_prompt
}

# START: Set the DISPLAY 
if [[ -z $DISPLAY && -z $SSH_CONNECTION && -o interactive ]]; then

	disp_no=($( ps -wwx | grep -F X11.app | awk '{print $NF}' | grep -e ":[0-9]"  ))

  if [[ -n $disp_no ]];then
  	export DISPLAY=${disp_no}.0
  else
		# FAILSAFE: dumb setting of DISPLAY gives a monochromatic message
    export DISPLAY=:0.0
  fi
fi
# END: Set the DISPLAY

export PATH="/opt/local/lib/postgresql83/bin:/opt/local/bin:/bin:/sbin:/usr/bin:/usr/sbin:/sw/bin:/usr/local/bin"
export EVENT_NOKQUEUE=1 # for memcache

export EDITOR='mate -w'
export PS1='%2/ ~ '

export TERM=xterm-color
export LSCOLORS=gxfxcxdxbxegedabagacad

export CDPATH=$CDPATH:~/Projects:~/Projects/edgecase:~/Projects/edgecase/clients
setopt auto_cd
