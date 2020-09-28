set nocompatible

filetype off
syntax on
let g:python3_host_prog = 'usr/bin/python'
filetype plugin on


" plugins
source $HOME/.config/nvim/config/init.vimrc

" global rules
source $HOME/.config/nvim/config/global_gui.vimrc

" theme
source $HOME/.config/nvim/config/theming.vimrc

" mappings
let mapleader = " "

source $HOME/.config/nvim/config/mapping_base.vimrc
source $HOME/.config/nvim/config/mapping_leader.vimrc
source $HOME/.config/nvim/config/mapping_control.vimrc

" plugins settings

source $HOME/.config/nvim/config/plugins_general.vimrc
source $HOME/.config/nvim/config/coc_plugin.vimrc
