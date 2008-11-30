function cd { builtin cd $1 && ls }

function gci { git ci -m "$*" }

function pman() { man -t "${1}" | open -f -a /Applications/Preview.app }

function photoshop { open -a Adobe\ Photoshop\ CS3 $* }

function preview { open -a Preview $* }

function pushed {
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

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/branch:\1 ~ /'
}

get_git_branch_name() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}
 
# Anything not checked in?
git_status() {
  if current_git_status=$(git status 2> /dev/null | grep 'added to commit' 2> /dev/null); then
    echo "⚡"
  else
    echo ''
  fi
}

git_prompt_info() {
  branch_prompt=$(parse_git_branch)
  if [ -n "$branch_prompt" ]; then
    echo "$branch_prompt"
    # echo "$fg[green]$branch_prompt$reset_color $(git_status)"
  fi
}

# Put the string "hostname::/full/directory/path" in the title bar:
set_term_title() { 
  echo -ne "\e]2;$PWD\a" 
}
 
# Put the parentdir/currentdir in the tab
set_term_tab() {
  echo -ne "\e]1;$PWD:h:t/$PWD:t\a" 
}
 
set_running_app() {
 printf "\e]1; $PWD:t:$(history $HISTCMD | cut -b7- ) \a"
}
 
precmd() { 
  set_term_title
  set_term_tab
  
  export PS1='%2/ ~ '
  export RPS1="$(git_status)"
  
  branch_prompt=$(parse_git_branch)
  if [ -n "$branch_prompt" ]; then
    export PS1="%1//$(parse_git_branch)"
    # if unpushed
    # export RPS1="$RPS1 - unpushed"
    # fi
  fi
}
 
preexec() { 
  set_running_app
}
 
postexec() {
  set_running_app
}