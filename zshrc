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
setopt always_to_end            # COMPLETION   - When auto complete from middle, complete and move cursor to end of word
setopt append_history           # HISTORY      - Append to history file, not overwrite it
setopt AUTO_LIST                # COMPLETION   - Automatically list choices on an ambiguous completion
setopt complete_in_word         # COMPLETION   - Always auto complete, not just at the end
setopt correct                  # INPUT/OUTPUT - Try to correct the spelling of commands
setopt HIST_IGNORE_DUPS         # HISTORY      - Don't enter command in history if it is duplicate of previous command
setopt HIST_FIND_NO_DUPS        # HISTORY      - Don't display duplicates when searching commands
setopt inc_append_history       # HISTORY      - Add command to history file as soon as entered, not at shell exit 
setopt nobeep
setopt nohup                    #              - Don't kill background jobs upon logging out