
. "$HOME/.local/bin/env"
eval "$(starship init zsh)"

autoload -Uz compinit
compinit

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
setopt COMPLETE_IN_WORD
setopt AUTO_MENU

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
 