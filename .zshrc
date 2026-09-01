
. "$HOME/.local/bin/env"
eval "$(starship init zsh)"

autoload -Uz compinit
compinit

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
setopt COMPLETE_IN_WORD
setopt AUTO_MENU

# Load API keys from secrets
[[ -r "$HOME/.config/secrets/load_api.zsh" ]] && \
  source "$HOME/.config/secrets/load_api.zsh"

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
