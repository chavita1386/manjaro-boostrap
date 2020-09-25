#!/usr/bin/env bash

# ask for password before all the scripts
sudo echo "ask for password before all the scripts"

## Install neccesary to clean installation
yes | sudo pacman -S wget git vim neovim chromium zsh flameshot gnome-terminal gnome-keyring xclip
# install oh-my-zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
# install oh-my-zsh plugins
git clone https://github.com/djui/alias-tips.git $HOME/.oh-my-zsh/custom/plugins/alias-tips && git clone https://github.com/supercrabtree/k $HOME/.oh-my-zsh/custom/plugins/k && git clone https://github.com/rupa/z $HOME/.oh-my-zsh/custom/plugins/z && git clone https://github.com/Valiev/almostontop.git $HOME/.oh-my-zsh/custom/plugins/almostontop && git clone https://github.com/zsh-users/zsh-completions $HOME/.oh-my-zsh/custom/plugins/zsh-completions && git clone https://github.com/zsh-users/zsh-syntax-highlighting $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting && git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions

## Development languages
yes | pacman -S jdk11-openjdk nodejs npm go yarn

## Vim Plug Neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
## Neovim configs
pip3 install pynvim
npm install -g neovim
gem install neovim

# FONTS powerline and fira code
yes | pacman -S powerline-fonts ttf-fira-code noto-fonts-emoji powerline powerline powerline python-powerline powerline-fonts ttf-liberation nerd-fonts-noto-sans-mono ttf-nerd-fonts-symbols-mono

# Spaceship-prompt
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# setup dev env
mkdir -p $HOME/code $HOME/code/java $HOME/code/go $HOME/code/go/bin $HOME/code/go/src $HOME/code/go/pkg $HOME/code/js/react $HOME/code/js/typescript

# setup folders
mkdir -p $HOME/.config/nvim/

## Config npm globals
mkdir ~/.npm-global
npm config set prefix "~/.npm-global"
touch ~/.profile
echo "export PATH=~/.npm-global/bin:$PATH" >> ~/.profile
source ~/.profile

# set default github .zshrc file
wget -O $HOME/.zshrc https://raw.githubusercontent.com/chavita1386/manjaro-boostrap/master/.zshrc

# set default nvim config file
wget -O $HOME/.config/nvim/init.vim https://raw.githubusercontent.com/chavita1386/manjaro-boostrap/master/init.vim

# set modifier theme to oh my zsh
cp $HOME/Documents/manjaro-boostrap/macovsky-ruby.zsh-theme $HOME/.oh-my-zsh/themes

## config to Sync VS Code
sudo mkdir /usr/lib/x86_64-linux-gnu/
sudo ln -s /usr/lib/gdk-pixbuf-2.0 /usr/lib/x86_64-linux-gnu/gdk-pixbuf-2.0

