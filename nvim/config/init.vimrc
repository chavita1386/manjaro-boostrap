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
Plug 'junegunn/seoul256.vim'
Plug 'mhartington/oceanic-next'

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
Plug 'iamcco/coc-tailwindcss',  {'do': 'yarn install --frozen-lockfile && yarn run build'}

"--------------- COC ----------------
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'iamcco/coc-tailwindcss'
Plug 'weirongxu/coc-explorer'
" coc extensions
"------------- VIM TSX -------------
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'jparise/vim-graphql'        " GraphQL syntax

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
