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

function git_branch_name() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

function pushed() {
  if [ $@ ]; then
    git cherry -v origin/$@ 2>/dev/null
  else
    git cherry -v origin/$(git_branch_name) 2>/dev/null
  fi
}

# Did you forget to `git push`?
function need_push() {
  if [[ $(pushed) == "" ]]
  then
    echo ""
  else
    echo "%{$fg[yellow]%} ↑%{\e[0m%}"
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

  branch_name=$(git_branch_name)
  if [ -n "$branch_name" ]; then
    export PS1="%1/ %{$fg[green]%}($branch_name)%{$reset_color%} ~ "
    export RPS1="%{$fg[yellow]%}$(is_working_directory_dirty)$(need_push)%{$reset_color%}"
  fi
}
