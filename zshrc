# Keeps the paths from growing too big    
typeset -U path manpath fpath

autoload -U compinit && compinit
autoload colors && colors

source ~/.zsh/functions.zsh
source ~/.zsh/exports.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/bindkeys.zsh
source ~/.zsh/completion_rake.zsh
source ~/.zsh/history.zsh
source ~/.zsh/completion.zsh
source ~/.zsh/prompt.zsh
source ~/.zsh/set_options.zsh
