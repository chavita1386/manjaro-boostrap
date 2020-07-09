" Python Config
let g:python3_host_prog = '/usr/bin/python'
set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set cursorline
" don't show insert mode
set noshowmode
" autoindent
set autoindent
" font
set guifont=Fira\ Code\ weight=453\ 10
" Leader key
let mapleader = " "

" Switching between files
nnoremap <C-Tab> :bn<CR>
nnoremap <C-S-Tab> :bp<CR>
" Shortcuts nmap
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <C-w> :wq<CR>
nmap <C-_> <Plug>NERDCommenterToggle
" Shortcuts vmap
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv
" Shortcuts imap
imap jj <Esc>

call plug#begin('~/.local/share/nvim/plugged')

" Themes
Plug 'morhetz/gruvbox'
Plug 'sonph/onehalf', {'rtp': 'vim/'}

" IDE plugins
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-airline/vim-airline' " Status bar
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine' " Identation lines
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ianks/vim-tsx'
Plug 'leafgarland/typescript-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'preservim/nerdcommenter'
" Languages
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
call plug#end()

""" Theme custom
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"

syntax on
" set t_Co=256
" colorscheme onehalfdark
" let g:airline_theme='onehalfdark'

""" Easymotion settings
nmap <Leader>s <Plug>(easymotion-s2)

""" Nerdtree settings
let NERDTreeQuitOnOpen=1
nmap <Leader>b :NERDTreeFind<CR>

""" Vim-Airline
let g:airline#extensions#tabline#fnamemod = ':t' " Show onlye the name of the file

""" IndentLine
" No mostrar en ciertos tipos de buffers y archivos
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']

""" Fzf
" Execute command with alt-enter : Commands
let g:fzf_commands_expect = 'alt-enter'
" Save history search 
let g:fzf_history_dir = '~/.local/share/fzf-history'
" Search file with Ctrl + p
nnoremap <C-p> :Files<CR>

""" Ctrlp
" Archivos ignorados
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|node_modules)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }
" Ignorar archivos en .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" TSX 
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx

""" Auto pairs
let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'

""" Prettier
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

""" NERDCommenter
filetype plugin on
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1


""" COC
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)



