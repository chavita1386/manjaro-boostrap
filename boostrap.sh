#!/usr/bin/env bash

# ask for password before all the scripts
sudo echo "ask for password before all the scripts"

## Install neccesary to clean installation
yes | sudo pacman -S wget git vim neovim chromium opera zsh yakuake
# install oh-my-zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
# install oh-my-zsh plugins
git clone https://github.com/djui/alias-tips.git $HOME/.oh-my-zsh/custom/plugins/alias-tips && git clone https://github.com/supercrabtree/k $HOME/.oh-my-zsh/custom/plugins/k && git clone https://github.com/rupa/z $HOME/.oh-my-zsh/custom/plugins/z && git clone https://github.com/Valiev/almostontop.git $HOME/.oh-my-zsh/custom/plugins/almostontop && git clone https://github.com/zsh-users/zsh-completions $HOME/.oh-my-zsh/custom/plugins/zsh-completions && git clone https://github.com/zsh-users/zsh-syntax-highlighting $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting && git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions

## Development languages
yes | pacman -S jdk11-openjdk nodejs npm go 

# FONTS powerline and fira code
yes | pacman -S powerline-fonts ttf-fira-code

# setup dev env
mkdir -p $HOME/code
mkdir -p $HOME/code/java
mkdir -p $HOME/code/go
mkdir -p $HOME/code/js

## Config npm globals
mkdir ~/.npm-global
npm config set prefix "~/.npm-global"
touch ~/.profile
echo "export PATH=~/.npm-global/bin:$PATH" >> ~/.profile
source ~/.profile

# set default github .zshrc file
wget -O $HOME/.zshrc https://raw.githubusercontent.com/chavita1386/manjaro-boostrap/master/.zshrc
