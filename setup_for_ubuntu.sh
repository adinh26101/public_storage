#!/bin/bash

# Update and upgrade system packages
sudo apt update && sudo apt upgrade -y

# Install dependencies
sudo apt install -y curl git zsh

# Install neofetch
curl -L https://raw.githubusercontent.com/dylanaraps/neofetch/master/install.sh | sh -s

# Install zsh and set it as default terminal
chsh -s $(which zsh)
echo "export ZSH_THEME=\"oh-my-zsh/themes/agnoster.zsh-theme\"" >> ~/.zshrc
source ~/.zshrc

# Install oh-my-zsh framework
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Choose and install plugins for oh-my-zsh (replace "git" with desired plugins)
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# Install VS Code
wget -O /tmp/vscode.deb https://go.microsoft.com/fwlink/?LinkID=532510&clcid=0&platform=linux-arm64&productLine=vscode-linux
sudo dpkg -i /tmp/vscode.deb && rm /tmp/vscode.deb

# Install Python 3
sudo apt install -y python3 python3-pip

# Install PostgreSQL
sudo apt install -y postgresql postgresql-contrib

# Install javac
sudo apt install openjdk-17-jdk
