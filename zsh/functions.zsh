function cd() { builtin cd $1 && ls }

# Force 'sudo zsh' to start root as a loging shell to 
# avoid problems with environment clashes
function sudo() {
  if [[ $1 = "zsh" ]]; then
    command sudo /opt/local/bin/zsh -l
  else
    command sudo "$@"
  fi
}

function get_git_branch_name() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

function pushed() {
  if [ $@ ]; then
    git cherry -v origin/$@
  else
    git cherry -v origin/$(get_git_branch_name)
  fi
}

# Did you forget to `git push`?
function need_push() {
  result=$(pushed $(get_git_branch_name))
  if [[ $result == "" ]]
    then echo ""
  else echo "unpushed!"
  fi
}
 
function is_working_directory_dirty() {
 if current_git_status=$(git status 2> /dev/null | grep --regex="deleted\|modified\|Untracked" 2> /dev/null); then
   echo "⚡"
 else
   echo ''
 fi
}
 
# Put the parentdir/currentdir in the tab
function set_term_tab() {
  echo -ne "\e]1;$PWD:h:t/$PWD:t\a" 
}
 
function set_running_app() {
 printf "\e]1; $PWD:t:$(history $HISTCMD | cut -b7- ) \a"
}

# Put the string "hostname::/full/directory/path" in the title bar:
function set_term_title() { 
  echo -ne "\e]2;$PWD\a" 
}

function set_prompt() {
  export PS1='%2/ ~ '

  branch_prompt=$(get_git_branch_name)
  if [ -n "$branch_prompt" ]; then
    export PS1="%1/ ($(get_git_branch_name)) ~ "
    export RPS1="%{$fg[yellow]%}$(is_working_directory_dirty) $(need_push)%{$reset_color%}"
  fi
}
