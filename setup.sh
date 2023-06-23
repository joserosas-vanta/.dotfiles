#!/bin/bash

# Update packages
sudo apt-get update

# Install Zsh
sudo apt-get install -y zsh

# Change the default shell to Zsh
chsh -s $(which zsh)

# Install Ansible
sudo apt-get install -y ansible

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
