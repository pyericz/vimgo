```
██╗  ██╗ █████╗ ██╗   ██╗██╗███╗   ███╗
██║  ██║██╔══██╗██║   ██║██║████╗ ████║
███████║███████║██║   ██║██║██╔████╔██║
██╔══██║██╔══██║╚██╗ ██╔╝██║██║╚██╔╝██║
██║  ██║██║  ██║ ╚████╔╝ ██║██║ ╚═╝ ██║
╚═╝  ╚═╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝
```
# Havim
An alternative vim configuration that I used in daily coding.

## Install
```
git clone https://github.com/pyericz/vimrc.git ~/.vim_runtime
cd ~/.vim_runtime && ./install.sh
```

## Install Powerline Fonts
```
cd ~/.vim_runtime && ./install_fonts.sh
```

## Included Plugins
* [pathogen.vim](https://github.com/tpope/vim-pathogen): Manage vim runtimepath.
* [bufexplorer.zip](https://github.com/vim-scripts/bufexplorer.zip): Easily switch between buffers. Can be opened with `<leader+o>`.
* [ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim): Fuzzy file, buffer, mru and tag finder. Can be opened with `<Ctrl+F>`. It also maps `<leader+d>` to toggle buffer tags from current file, somewhat like **Goto Symbol...** feature using in Sumblime Text editor. Please install [Universal Tags](https://github.com/universal-ctags/ctags) to enable this feature.
* [NERD Tree](https://github.com/scrooloose/nerdtree): A file system explorer for the Vim editor. Using this plugin, users can visually browse complex directory hierarchies, quickly open files for reading or editing, and perform basic file system operations. Toggle on with `<leader+nn>`.
* [ale](https://github.com/w0rp/ale): Syntax and lint checking for vim (async).
* [vim-commentary](https://github.com/tpope/vim-commentary): Comment stuff out.  Use `gcc` to comment out a line (takes a count), `gc` to comment out the target of a motion. `gcu` uncomments a set of adjacent commented lines.
* [far.vim](https://github.com/brooth/far.vim): Easier to find and replace text through multiple files.
* [vim-multi-cursors](https://github.com/terryma/vim-multiple-cursors): Sublime Text style multiple selections.
* [vim-polyglot](https://github.com/sheerun/vim-polyglot): A collection of language packs for Vim.
* [vim-fugitive](https://github.com/tpope/vim-fugitive): A Git wrapper so awesome.
* [vim-airline](https://github.com/vim-airline/vim-airline): Lean & mean status/tabline for vim that's light as air.


## Key Mappings

The [leader](http://learnvimscriptthehardway.stevelosh.com/chapters/06.html#leader) key `<leader>` is map to `,`.

### Normal Mode Mappings

Map `<Space>` to `/` (search) and `Ctrl-<Space>` to `?` (backwards search)
```
map <space> /
map <c-space> ?
```

Disable highlight when `<leader><cr>` is pressed
```
map <silent> <leader><cr> :noh<cr>
```

Smart way to move between windows
```
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
```

Useful mappings for managing tabs
```
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
```

Remove Trailing Space
```
map <leader>ts :%s/\s\+$//e<cr>:noh<cr>:w<cr>
```

Switch [CWD](http://vim.wikia.com/wiki/Set_working_directory_to_the_current_file) to the directory of the open buffer
```
map <leader>cd :cd %:p:h<cr>:pwd<cr>
```

Open Netrw
```
map <leader>d :Explore<cr>
```

### Plugin Mappings

* BufExplorer
```
map <leader>o :BufExplorer<cr>
```

* CTRL-P
```
let g:ctrlp_map = '<c-f>'
map <leader>j :CtrlP<cr>
map <c-b> :CtrlPBuffer<cr>
map <leader>d :CtrlPBufTag<cr>
```

* NERDTree
```
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>
```

## License
[MIT License](https://github.com/pyericz/vimrc/blob/master/LICENSE)
