" disable record macros
map q <Nop>

" j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" Switching between files
nnoremap gp :bp<CR>
nnoremap gn :bn<CR>

" escape easy
imap jj <Esc>
inoremap jk <Esc>

" Allow next buffer with ctrl tab
nnoremap  <silent>   <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>

" tmux
nmap <silent> <Left> :TmuxNavigateLeft<cr>
nmap <silent> <Down> :TmuxNavigateDown<cr>
nmap <silent> <Up> :TmuxNavigateUp<cr>
nmap <silent> <Right> :TmuxNavigateRight<cr>
