#!/usr/bin/env bash

# ask for password before all the scripts
sudo echo "ask for password before all the scripts"

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# set .zshrc
wget -O $HOME/.zshrc https://gist.githubusercontent.com/veggiemonk/f7dc67b05400905973e2db050dffd05b/raw/433d43edc07339c181b20b83406d1f5053583688/.zshrc

# install oh-my-zsh plugins
git clone https://github.com/djui/alias-tips.git $HOME/.oh-my-zsh/custom/plugins/alias-tips
git clone https://github.com/supercrabtree/k $HOME/.oh-my-zsh/custom/plugins/k
git clone https://github.com/rupa/z $HOME/.oh-my-zsh/custom/plugins/z
git clone https://github.com/Valiev/almostontop.git $HOME/.oh-my-zsh/custom/plugins/almostontop

git clone https://github.com/zsh-users/zsh-completions $HOME/.oh-my-zsh/custom/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-syntax-highlighting $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions

## Install JDK super Java de shit
yes | pacman -S jdk-openjdk

## Install nodejs and npm
yes | pacman -S nodejs
yes | pacman -S npm

## Install golang
yes | pacman -S go

## Install vim
yes | pacman -S vim

# FONTS powerline and fira code
yes | pacman -S powerline-fonts
yes | pacman -S ttf-fira-code

# setup dev env
mkdir -p $HOME/code

## Config npm globals
mkdir ~/.npm-global
npm config set prefix "~/.npm-global"
touch ~/.profile
echo "export PATH=~/.npm-global/bin:$PATH" >> ~/.profile
source ~/.profile



# pure prompt & other goodies
#npm install -g pure-prompt browser-sync eslint diff-so-fancy ntl ghwd
    
## MAC CLI
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/guarinogabriel/mac-cli/master/mac-cli/tools/install)"

