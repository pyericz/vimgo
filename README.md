# vimrc
An alternative vim configuration that I used in daily coding.

## Install
```
git clone --recursive https://github.com/pyericz/vimrc.git ~/.vim_runtime
cd ~/.vim_runtime && sh install.sh
```

## Included Plugins
* [pathogen.vim](https://github.com/tpope/vim-pathogen): Manage vim runtimepath.
* [bufexplorer.zip](https://github.com/vim-scripts/bufexplorer.zip): Easily switch between buffers. Can be opened with `<leader+o>`.
* [ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim): Fuzzy file, buffer, mru and tag finder. Can be opened with `<Ctrl+F>`. It also maps `<leader+d>` to toggle buffer tags from current file, somewhat like **Goto Symbol...** feature using in Sumblime Text editor. Please install [Universal Tags](https://github.com/universal-ctags/ctags) to enable this feature.
* [lightline.vim](https://github.com/itchyny/lightline.vim): A light and configurable statusline/tabline for Vim.
* [NERD Tree](https://github.com/scrooloose/nerdtree): A file system explorer for the Vim editor. Using this plugin, users can visually browse complex directory hierarchies, quickly open files for reading or editing, and perform basic file system operations. Toggle on with `<leader+nn>`.
* [ale](https://github.com/w0rp/ale): Syntax and lint checking for vim (async).
* [vim-commentary](https://github.com/tpope/vim-commentary): Comment stuff out.  Use `gcc` to comment out a line (takes a count), `gc` to comment out the target of a motion. `gcu` uncomments a set of adjacent commented lines.
* [far.vim](https://github.com/brooth/far.vim): Easier to find and replace text through multiple files. 

## Key Mappings

The [leader](http://learnvimscriptthehardway.stevelosh.com/chapters/06.html#leader) key `<leader>` is map to `,`.

### Normal mode mappings

Map `<Space>` to `/` (search) and `Ctrl-<Space>` to `?` (backwards search)
```
map <space> /
map <c-space> ?
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
map <leader>th :tabprevious<cr>
map <leader>tl :tabnext<cr> 
```

Disable highlight when `<leader><cr>` is pressed
```
map <silent> <leader><cr> :noh<cr>
```
  
## License
[MIT License](https://github.com/pyericz/vimrc/blob/master/LICENSE)
