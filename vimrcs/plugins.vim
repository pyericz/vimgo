"""""""""""""""""""""""""""""
" => Plug
"""""""""""""""""""""""""""""
call plug#begin('~/.vim_runtime/plugged')

Plug 'pyericz/vim-code-dark'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-scripts/bufexplorer.zip'
Plug 'w0rp/ale'
Plug 'tpope/vim-commentary'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-startify'
Plug 'brooth/far.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}
Plug 'honza/vim-snippets'
Plug 'vim-scripts/mru.vim'
Plug 'Yggdroot/indentLine'

call plug#end()
