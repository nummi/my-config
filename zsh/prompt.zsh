precmd() { 
  set_term_title
  set_term_tab
  set_prompt
}
 
preexec() { 
  set_running_app
}
 
postexec() {
  set_running_app
}