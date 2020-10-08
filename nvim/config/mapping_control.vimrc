" =========================================
" 			mapping control
" =========================================

nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv

nnoremap <C-b> :NERDTreeToggle<CR>

nnoremap <C-p> :Files<CR>

" Resize windows
nmap <C-left> :3wincmd <<CR>
nmap <C-right> :3wincmd ><CR>
nmap <C-up> :3wincmd +<CR>
nmap <C-down> :3wincmd -<CR>
