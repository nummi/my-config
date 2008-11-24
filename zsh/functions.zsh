function cd { builtin cd $1 && ls }

function gci { git ci -m "$*" }

function pman() { man -t "${1}" | open -f -a /Applications/Preview.app }

function photoshop { open -a Adobe\ Photoshop\ CS3 $* }

function preview { open -a Preview $* }

function pushed 
{ 
  if [ $@ ]; then
    git cherry -v origin/$@
  else
    git cherry -v origin
  fi
}

function reload() { touch tmp/restart.txt }

# Force 'sudo zsh' to start root as a loging shell to 
# avoid problems with environment clashes:
function sudo {
  if [[ $1 = "zsh" ]]; then
    command sudo /opt/local/bin/zsh -l
  else
    command sudo "$@"
  fi
}

# Ehren's Stuff
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