" =========================================
" 			 plugins
" =========================================
call plug#begin('~/.local/share/nvim/plugged')

"------------- themes ----------------
" Plug 'blueshirts/darcula'
Plug 'doums/darcula'
Plug 'morhetz/gruvbox'
Plug 'dracula/dracula-theme'
Plug 'jnurmine/zenburn'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'lokaltog/vim-powerline'
Plug 'rakr/vim-one'

"------------- IDE plugins -----------
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
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
Plug 'lilydjwg/colorizer'
Plug 'ryanoasis/vim-devicons'

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
