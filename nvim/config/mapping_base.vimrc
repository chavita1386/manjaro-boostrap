" Easy access to the start of the line
nmap 0 ^

" disable record macros
map q <Nop>

" j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" Switching between files
nnoremap gp :bp<CR>
nnoremap gn :bn<CR>

" escape easy
imap jj <esc>

" Allow next buffer with ctrl tab
nnoremap  <silent>   <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>

" tmux
nmap <silent> <a-h> :TmuxNavigateLeft<cr>
nmap <silent> <a-j> :TmuxNavigateDown<cr>
nmap <silent> <a-k> :TmuxNavigateUp<cr>
nmap <silent> <a-l> :TmuxNavigateRight<cr>
