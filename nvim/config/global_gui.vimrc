" =========================================
" 			 global gui
" =========================================

set encoding=utf-8
set title
set ruler
set showcmd
set list
set listchars=tab:··,trail:·,extends:#,nbsp:.
set mouse=a
set clipboard+=unnamed
set noshowmode
set splitright
set t_Co=256
set spell spelllang=en_us

" lines
set relativenumber
set number
set numberwidth=2
set cursorline

" indent
set tabstop=2
set foldmethod=syntax
set foldlevel=99
set expandtab
set foldnestmax=30
set autoindent
set sw=2
set conceallevel=0

" automatically remove all trailing spaces
autocmd BufWritePre * %s/\s\+$//e

