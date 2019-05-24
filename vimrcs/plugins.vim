"""""""""""""""""""""""""""""
" => Plug
"""""""""""""""""""""""""""""
let g:plug_window = 'enew'
call plug#begin(g:root_path . 'plugged')

" Themes
Plug 'pyericz/vim-code-dark'
Plug 'morhetz/gruvbox'

" Start Screen
Plug 'mhinz/vim-startify'

" File/Buffer Explore
Plug 'tpope/vim-vinegar'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/bufexplorer.zip'
Plug 'vim-scripts/mru.vim'

" Fuzzy Finding
Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Lint
Plug 'w0rp/ale'

" Commentary
Plug 'tpope/vim-commentary'

" Multiple Cursors
Plug 'terryma/vim-multiple-cursors'

" Languages
Plug 'sheerun/vim-polyglot'

" Git
Plug 'tpope/vim-fugitive'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Auto Completion
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}
Plug 'honza/vim-snippets'

" Indent Guide Line
Plug 'Yggdroot/indentLine'

" Yank
Plug 'maxbrunsfeld/vim-yankstack'

" Auto Pair
Plug 'jiangmiao/auto-pairs'

call plug#end()
