source ~/.zsh/functions.zsh
source ~/.zsh/options.zsh
source ~/.zsh/exports.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/bindkeys.zsh
source ~/.zsh/completion_rake.zsh
source ~/.zsh/history.zsh
source ~/.zsh/completion.zsh

# COLOR MODULE
autoload colors ; colors

# Keeps the paths from growing too big    
typeset -U path manpath fpath