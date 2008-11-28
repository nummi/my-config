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
#export PS1='%2/ ~ '
#export PS1='%{$reset_color$fg[gray]%}%2~%{$reset_color$bold_color$fg[green]%}$(git_prompt_info)>%{$reset_color%} ' 

export TERM=xterm-color
export LSCOLORS=gxfxcxdxbxegedabagacad

export CDPATH=$CDPATH:~/Projects:~/Projects/edgecase:~/Projects/edgecase/clients