# Shell and Config Management
alias bashrc="code ~/.bashrc"
alias srcbash="source ~/.bashrc"
alias zshrc="code ~/.zshrc"
alias srczsh="source ~/.zshrc"
alias src="srczsh"
alias rc="zshrc"
alias coderc='code ~/Library/Application Support/Cursor/User/settings.json'

# Config Files
alias srctmux="tmux source-file ~/.config/tmux/.tmux.conf"
alias tmux-config="code ~/.config/tmux/.tmux.conf"
alias p10k-config="code ~/.p10k.zsh"
alias zellij-config="code ~/.config/zellij/config.kdl"

# Docker
alias d="docker"
alias dcu='docker compose up'
alias ddf='docker system df'
alias lzd='lazydocker'

# Python
alias activate='source .venv/bin/activate'

# Node/NPM
alias npm="npm"
alias n="npm"
alias p="pnpm"
alias nrd="npm run dev"
alias nrt="npm run test"
alias nrs="npm run start"
alias nrb="npm run build"
alias nr="npm run "

# Homebrew
alias bu="brew update && brew upgrade && brew cleanup"
alias bi="brew install "
alias bui="brew uninstall "

# Git (supplementing oh-my-zsh git plugin)
alias galias="alias | grep git"
alias lg="lazygit"
alias cb="git branch --show-current"
alias gplo="git pull origin "
alias gplocb='git pull origin $(git branch --show-current)'
alias gpso="git push origin "
alias gpsocb='git push origin $(git branch --show-current)'
alias gau="git add -u"
alias gcm="git commit -m "
alias gs="git status"
alias gco="git checkout "
alias gcom="git checkout main"
alias groot='cd $(git rev-parse --show-toplevel)'
alias gwt="git worktree"
alias pwb="git branch --show-current"

# Graphite
alias gtc="gt create -m"
alias gtcm="gt create -m"
alias gtm="gt modify"
alias gtmc="gt modify --commit"
alias gtsync="gt sync"
alias gts="gt submit"
alias gtr="gt restack"
alias gtp="gt sync"

# Core Repository Navigation
alias coredev="zellij --layout ~/.config/zellij/layouts/core.kdl"
alias core="cd $CORE_DIR"
alias sd="cd $CORE_DIR/controlunit/stopdetection"
alias fdr="cd $CORE_DIR/controlunit/framedriver"
alias triton="cd $CORE_DIR/controlunit/triton"
alias fu="cd $CORE_DIR/controlunit/fileuploader"
alias ch="cd $CORE_DIR/dbt/clickhouse"
alias pipe="cd $CORE_DIR/lib/python/pipelines"
alias cli='uv run $(git rev-parse --show-toplevel)/cli/main.py'
alias dcli='PLATFORM=linux/amd64 $(git rev-parse --show-toplevel)/dcli.sh'

# Applications
alias code=cursor
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC -I rc'

# Chrome Profiles
alias chrome-school='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --profile-directory="Default"'
alias chrome-personal='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --profile-directory="Profile 1"'
alias chrome-work='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --profile-directory="Profile 2"'

# Google Cloud
alias gcloud-auth-logout="gcloud auth revoke --all && gcloud auth application-default revoke"

# System Tools
alias ports='lsof -nP -iTCP -sTCP:LISTEN'

# C/C++ Development
alias cmake="cmake -DCMAKE_C_COMPILER=$CC -DCMAKE_CXX_COMPILER=$CXX"

# Chezmoi dotfiles
alias dot="chezmoi"
