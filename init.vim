syntax on
" Python Config
let g:python3_host_prog = '/usr/bin/python'
set number
set mouse=a
set numberwidth=1
set clipboard+=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set cursorline
set foldmethod=syntax
set foldnestmax=30
set nofoldenable
set foldlevel=2
set tabstop=2
set noshowmode
set autoindent
" set guifont=Fira\ Code\ weight=453\ 10
set t_Co=256
set wildmenu
set foldmethod=indent
" Disable quote concealing in JSON files
set lcs+=space:·
set invlist

" =========================
"  		Leader key
" =========================
let mapleader = " "

" Switching between files
nnoremap gp :bp<CR> 
nnoremap gn :bn<CR>

" Shortcuts nmap
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>x :bd<CR>
" nmap <C-w> :wq<CR>
nmap <C-_> <Plug>NERDCommenterToggle
" Shortcuts vmap
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv
" Shortcuts imap
imap jj <Esc>

" Allow next buffer with ctrl tab
nnoremap  <silent>   <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>

" Allow to close buffer with ctrl w
nmap <C-w> :bd<CR>


" === VIM PLUGIN ======================
call plug#begin('~/.local/share/nvim/plugged')

"------------- Themes ----------------
Plug 'morhetz/gruvbox'
Plug 'jnurmine/zenburn'
Plug 'sonph/onehalf', {'rtp': 'vim/'}

"------------- IDE plugins -----------
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-airline/vim-airline' " Status bar
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine' " Identation lines
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-multiple-cursors'
Plug 'mattn/emmet-vim'
Plug 'turbio/bracey.vim'
Plug 'elzr/vim-json'
Plug 'tpope/vim-surround'

"--------------- COC ----------------
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'iamcco/coc-tailwindcss'
Plug 'weirongxu/coc-explorer'
" coc extensions
"------------- VIM TSX -------------
Plug 'ianks/vim-tsx'
Plug 'leafgarland/typescript-vim'

"------------- Prettier ------------
Plug 'prettier/vim-prettier', {
\ 'do': 'yarn install',
\ 'branch': 'release/0.x'
\ }
Plug 'reedes/vim-lexical'

"------------ Languages ------------
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'fatih/vim-go'
Plug 'jparise/vim-graphql'

call plug#end()
" === VIM PLUGIN END ===================

""" Theme custom
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
set background=dark


" =========================================
" 			 emmet	
" =========================================
let g:user_emmet_mode='a'


" =========================================
" 			 vim-json	
" =========================================
set conceallevel=0
let g:vim_json_syntax_conceal = 0

" =========================================
" 				easymotion settings 
" =========================================

nmap <Leader>s <Plug>(easymotion-s2)


" =========================================
" 				nerdtree settings 
" =========================================

let NERDTreeQuitOnOpen=1
nmap <Leader>b :NERDTreeFind<CR>


" =========================================
" 				airline settings 
" =========================================
let g:airline#extensions#tabline#enabled = 1 " Show opened buffers like tabs
let g:airline#extensions#tabline#fnamemod = ':t' " Show onlye the name of the file
let g:airline_theme = 'gruvbox'
" =========================================
" 				indentLine settings 
" =========================================

" No mostrar en ciertos tipos de buffers y archivos
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']


" =========================================
" 				fzf settings 
" =========================================
" Execute command with alt-enter : Commands
let g:fzf_commands_expect = 'alt-enter'
" Save history search 
let g:fzf_history_dir = '~/.local/share/fzf-history'
" Search file with Ctrl + p
nnoremap <C-p> :Files<CR>


" =========================================
" 				ctrlp settings 
" =========================================
" Archivos ignorados
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|node_modules)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }


" =========================================
" 				typescript settings (tsx)
" =========================================
let g:syntastic_typescript_tsc_fname = ''
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx

" =========================================
" 			vim-go golang	
" =========================================
let g:go_fmt_command = "goimports"    
let g:go_auto_type_info = 1 
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
let g:go_highlight_operators = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_functions = 1
let g:go_highlight_variable_declarations = 1

" =========================================
" 				autopairs settings
" =========================================
let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'

" =========================================
" 				prettier settings
" =========================================
let g:prettier#autoformat = 0
let g:prettier#exec_cmd_async = 1
let g:prettier#config#parser = 'babylon'
let g:prettier#config#tab_width = '2'
let g:prettier#config#use_tabs = 'false'

autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.html PrettierAsync

" =========================================
" 				nerdcommenter settings
" =========================================
filetype plugin on
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1


" =========================================
" 				lexical settings
" =========================================
let g:lexical#spelllang = ['en_us']



" =====================================
" 					coc settings
" =====================================
" TextEdit might fail if hidden is not set.


" Extensions
let g:coc_global_extensions = ['coc-tsserver', 'coc-emmet', 'coc-json', 'coc-css', 'coc-html', 'coc-tailwindcss', 'coc-go', 'coc-explorer']
" Coc-explorer
let g:coc_explorer_global_presets = {
\   'tab': {
\     'position': 'tab',
\     'quit-on-open': v:true,
\   },
\   'floating': {
\     'position': 'floating',
\     'open-action-strategy': 'sourceWindow',
\			'file-root-template': '[icon] [title] [hidden & 1][root] [fullpath]',
\   },
\   'floatingTop': {
\     'position': 'floating',
\     'floating-position': 'center-top',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingLeftside': {
\     'position': 'floating',
\     'floating-position': 'left-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingRightside': {
\     'position': 'floating',
\     'floating-position': 'right-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'simplify': {
\     'file-child-template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   }
\ }
nmap <space>e :CocCommand explorer --preset floating<CR>


set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
