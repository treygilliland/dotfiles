# Oh My Zsh Configuration
export ZSH="$HOME/.oh-my-zsh"

# Editor
export EDITOR="cursor --wait"

# Git
export GITHUB_USERNAME="treygilliland"

# Core Repository Path
export CORE_DIR="~/binit/code/core"

# Android Development
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# C/C++ Compiler Configuration
export CC=/opt/homebrew/opt/llvm/bin/clang
export CXX=/opt/homebrew/opt/llvm/bin/clang++

# Additional PATH exports
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.jenv/bin:$PATH"

# Directory hashing for quick navigation
hash -d c=$HOME/binit/code/core
hash -d code=$HOME/code

# Auto CD configuration
setopt auto_cd
cdpath=(
    $HOME/binit/code/
    $HOME/binit/code/core/controlunit
    $HOME
)
