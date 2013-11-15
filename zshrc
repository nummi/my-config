autoload -U compinit && compinit
autoload colors && colors

source `which ~/.zsh/Tmuxinator.zsh`
source ~/.zsh/aliases.zsh
source ~/.zsh/bindkeys.zsh
source ~/.zsh/completion.zsh
source ~/.zsh/completion_rake.zsh
source ~/.zsh/exports.zsh
source ~/.zsh/functions.zsh
source ~/.zsh/history.zsh
source ~/.zsh/prompt.zsh
source ~/.zsh/set_options.zsh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# -- start rip config -- #
RIPDIR=/Users/nummi/.rip
RUBYLIB="$RUBYLIB:$RIPDIR/active/lib"
PATH="$PATH:$RIPDIR/active/bin"
export RIPDIR RUBYLIB PATH
# -- end rip config -- #

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# T2 API stuff:
GOOGLE_CLIENT_ID="480140443980.apps.googleusercontent.com"
GOOGLE_SECRET="v03dRPvKlgn_OsK79MXSDn5j"

ulimit -n 2048
