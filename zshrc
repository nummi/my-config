source ~/.zsh/exports.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/bindkeys.zsh
source ~/.zsh/completion_rake.zsh
source ~/.zsh/history.zsh
source ~/.zsh/functions.zsh
source ~/.zsh/completion.zsh

# COLOR MODULE
autoload colors ; colors

# Keeps the paths from growing too big    
typeset -U path manpath fpath

# MISC CONFIG
setopt append_history 
setopt inc_append_history 
setopt HIST_FIND_NO_DUPS
setopt complete_in_word         # Not just at the end
setopt always_to_end            # When complete from middle, move cursor
setopt nohup										# In general, we don't kill background jobs upon logging out