function anybar { echo -n $1 | nc -4u -w0 localhost ${2:-1738}; }

# Echo directory contents when changing directories
function cd() { builtin cd $1 && ls }

# Put the string "hostname::/full/directory/path" in the title bar:
set_term_title() {
  echo -ne "\e]2;$PWD\a"
}

# Put the parentdir/currentdir in the tab
set_term_tab() {
  echo -ne "\e]1;$PWD:h:t/$PWD:t\a"
}

set_prompt() {
  export PS1='%2/ ~ '

  branch_name=$(git_branch_name)
  author_name=$(git_author_name)
  if [ -n "$branch_name" ]; then
    export PS1='%1~%{$reset_color$bold_color$fg[cyan]%}%{$reset_color$fg[cyan]%} ($author_name: $branch_name)%{$reset_color%} ~ '
    export RPS1="%{$fg[yellow]%}$(is_working_directory_dirty)$(need_push)%{$reset_color%}"
  fi
}

pushed() {
  if [ $@ ]; then
    git cherry -v origin/$@ 2>/dev/null
  else
    git cherry -v origin/$(git_branch_name) 2>/dev/null
  fi
}

need_push() {
  if [[ $(pushed) == "" ]]
  then
    echo ""
  else
    echo "%{$fg[yellow]%} ↑%{\e[0m%}"
  fi
}

is_working_directory_dirty() {
 if current_git_status=$(git status 2> /dev/null | grep --regex="deleted\|modified\|Untracked" 2> /dev/null); then
   echo "⚡"
 else
   echo ''
 fi
}


git_branch_name() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

git_author_name() {
  git config --get user.name | sed 's/\([a-zA-Z+]\)[a-zA-Z]* */\1/g' | tr '[A-Z]' '[a-z]'
}

function ack_to_vim() {
  ack -l $* | xargs mvim -p
}

function check_branches {
  for sha in `git log origin/acceptance..$1 --oneline --format="%H"` ; do
    (git branch --remote --contains $sha | grep release-candidate) > /dev/null
    if [ $? -eq 0 ] ; then
      echo $'\e[32m' "$sha is in release-candidate" $'\e[0m'; 
    else
      echo $'\e[31m' "$sha is NOT in release-candidate" $'\e[0m'; 
    fi
  done
}
