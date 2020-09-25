" =========================================
" 			plugins settings  
" =========================================

" =========
"   ctrlp
" =========
let g:ctrlp_use_caching = 0
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|node_modules)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }


" =========
"   emmet
" =========
let g:user_emmet_mode='a'

" =========
"   vim-json
" =========
let g:vim_json_syntax_conceal = 0

" ============
"   nerdtree 
" ============
let g:NERDTreeIgnore = ['^node_modules$']
let NERDTreeQuitOnOpen=1


" ============
"   airline 
" ============
"let g:airline#extensions#tabline#enabled = 1 " Show opened buffers like tabs
"let g:airline#extensions#tabline#fnamemod = ':t2' " Show onlye the name of the file


" ===============
"   indentline 
" ===============
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']


" ===============
"   fzf  
" ===============
" Execute command with alt-enter : Commands
let g:fzf_commands_expect = 'alt-enter'
" Save history search 
let g:fzf_history_dir = '~/.local/share/fzf-history'

" ===============
"   typescript (tsx)  
" ===============
let g:syntastic_typescript_tsc_fname = ''
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx


" ====================
"   vim-go (golang)  
" ====================
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

" ====================
"   autopairs   
" ====================
let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'


" ====================
"   prettier   
" ====================
let g:prettier#autoformat = 0
let g:prettier#exec_cmd_async = 1
let g:prettier#config#parser = 'babylon'
let g:prettier#config#tab_width = '2'
let g:prettier#config#use_tabs = 'false'
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.html PrettierAsync


" ====================
"   nerdcommenter   
" ====================
filetype plugin on
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1


" ====================
"   lexical   
" ====================
let g:lexical#spell = 1
let g:lexical#spelllang = ['en_us']


" ====================
"   tmux   
" ====================
let g:tmux_navigator_no_mappings = 1
" nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>





