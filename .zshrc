
. "$HOME/.local/bin/env"
eval "$(starship init zsh)"

autoload -Uz compinit
compinit

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
setopt COMPLETE_IN_WORD
setopt AUTO_MENU

# Load API keys
CLAUDE_CODE_ENV_FILE="$HOME/.config/secrets/claude_code.zsh"

if [[ -f "$CLAUDE_CODE_ENV_FILE" ]]; then
  source "$CLAUDE_CODE_ENV_FILE"
  print "Claude Code ✅"
else
  print "Claude Code config not found: $CLAUDE_CODE_ENV_FILE"
fi

unset CLAUDE_CODE_ENV_FILE

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
