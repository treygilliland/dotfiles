# Tool Completions and Initializations

# 1Password CLI
eval "$(op completion zsh)"; compdef _op op

# Atuin (shell history)
eval "$(atuin init zsh)"

# UV Python package manager
eval "$(uv generate-shell-completion zsh)"
eval "$(uvx --generate-shell-completion zsh)"

# Google Cloud SDK
source "/opt/homebrew/share/google-cloud-sdk/completion.zsh.inc"
source "/opt/homebrew/share/google-cloud-sdk/path.zsh.inc"

# TheFuck command corrector
eval $(thefuck --alias)

# Mise development tool version manager
eval "$(mise activate zsh)"

# Zoxide (better cd)
eval "$(zoxide init --cmd cd zsh)"

# Java environment manager
eval "$(jenv init -)"

# ZSH syntax highlighting (should be last)
if [[ -f /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
    source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
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
