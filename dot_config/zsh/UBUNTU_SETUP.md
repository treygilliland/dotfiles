# Ubuntu Setup Guide

This guide helps you install the tools referenced in your zsh configuration on Ubuntu.

## Essential Tools

### Package Manager Updates

```bash
sudo apt update && sudo apt upgrade
```

### ZSH and Oh My Zsh

```bash
# Install zsh
sudo apt install zsh

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install zsh-autosuggestions plugin
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

### Powerlevel10k Theme

```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

### Syntax Highlighting

```bash
sudo apt install zsh-syntax-highlighting
```

## Development Tools

### Python/UV

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

### Node.js/NPM

```bash
# Using NodeSource
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt install nodejs

# Or using snap
sudo snap install node --classic
```

### Docker

```bash
# Add Docker's official GPG key
sudo apt update
sudo apt install ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# Add the repository
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Install Docker
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

## Optional Tools

### LazyGit

```bash
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
```

### LazyDocker

```bash
curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash
```

### Google Cloud SDK

```bash
# Add the Cloud SDK distribution URI as a package source
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list

# Import the Google Cloud public key
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -

# Update and install
sudo apt update && sudo apt install google-cloud-cli
```

### Other Useful Tools

```bash
# Terminal tools
sudo apt install tmux zellij yazi atuin zoxide

# Development
sudo apt install clang build-essential

# System monitoring
sudo apt install htop glances ncdu

# File tools
sudo apt install bat tree fd-find ripgrep

# TheFuck
sudo apt install python3-dev python3-pip python3-setuptools
pip3 install thefuck --user
```

## Android Development (Optional)

```bash
# Create Android directory
mkdir -p ~/Android/Sdk

# Download Android Command Line Tools
cd ~/Android/Sdk
wget https://dl.google.com/android/repository/commandlinetools-linux-9477386_latest.zip
unzip commandlinetools-linux-9477386_latest.zip
rm commandlinetools-linux-9477386_latest.zip

# Set up SDK
mkdir -p cmdline-tools/latest
mv cmdline-tools/* cmdline-tools/latest/
```

## Chrome Profiles (Optional)

Ubuntu users can customize Chrome profile aliases in `~/.zshrc.local`:

```bash
# Example Chrome profiles for Ubuntu
alias chrome-school='google-chrome --profile-directory="Default"'
alias chrome-personal='google-chrome --profile-directory="Profile 1"'
alias chrome-work='google-chrome --profile-directory="Profile 2"'
```

## Machine-Specific Configuration

Create `~/.zshrc.local` for any Ubuntu-specific customizations that shouldn't be in your dotfiles repo.
