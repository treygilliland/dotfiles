# Tool Completions and Initializations

# 1Password CLI
if command -v op &> /dev/null; then
  eval "$(op completion zsh)"; compdef _op op
fi

# UV Python package manager
if command -v uv &> /dev/null; then
  eval "$(uv generate-shell-completion zsh)"
fi
if command -v uvx &> /dev/null; then
  eval "$(uvx --generate-shell-completion zsh)"
fi

# Google Cloud SDK (check both macOS and Linux paths)
if [[ -f "/opt/homebrew/share/google-cloud-sdk/completion.zsh.inc" ]]; then
  source "/opt/homebrew/share/google-cloud-sdk/completion.zsh.inc"
  source "/opt/homebrew/share/google-cloud-sdk/path.zsh.inc"
elif [[ -f "/home/linuxbrew/.linuxbrew/share/google-cloud-sdk/completion.zsh.inc" ]]; then
  source "/home/linuxbrew/.linuxbrew/share/google-cloud-sdk/completion.zsh.inc"
  source "/home/linuxbrew/.linuxbrew/share/google-cloud-sdk/path.zsh.inc"
fi

# TheFuck command corrector
if command -v thefuck &> /dev/null; then
  eval $(thefuck --alias)
fi

# Mise development tool version manager
if command -v mise &> /dev/null; then
  eval "$(mise activate zsh)"
fi

# Zoxide (better cd)
if command -v zoxide &> /dev/null; then
  eval "$(zoxide init --cmd cd zsh)"
fi

# Java environment manager
if command -v jenv &> /dev/null; then
  eval "$(jenv init -)"
fi

# ZSH syntax highlighting (should be last)
# Check both macOS and Linux paths
if [[ -f /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
    source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
elif [[ -f /home/linuxbrew/.linuxbrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
    source /home/linuxbrew/.linuxbrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# ZSH auto completion setup
autoload -Uz compinit
zstyle ':completion:*' menu select
fpath+=~/.zfunc

# Graphite completion
#compdef gt
###-begin-gt-completions-###
#
# yargs command completion script
#
# Installation: gt completion >> ~/.zshrc
#    or gt completion >> ~/.zprofile on OSX.
#
_gt_yargs_completions()
{
  local reply
  local si=$IFS
  IFS=$'
' reply=($(COMP_CWORD="$((CURRENT-1))" COMP_LINE="$BUFFER" COMP_POINT="$CURSOR" gt --get-yargs-completions "${words[@]}"))
  IFS=$si
  _describe 'values' reply
}
compdef _gt_yargs_completions gt
###-end-gt-completions-###
