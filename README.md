# vimrc

## Install
```
git clone --recursive https://github.com/pyericz/vimrc.git ~/.vim_runtime
cd ~/.vim_runtime && sh install.sh
```

## Update
```
cd ~/.vim_runtime
git pull --rebase
```

## Included plugins
* [bufexplorer.zip](https://github.com/vim-scripts/bufexplorer.zip): Quickly and easily switch between buffers. This plugin can be opened with <leader+o>.
* [ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim): Fuzzy file, buffer, mru and tag finder. It's mapped to `<Ctrl+F>`. `<leader+d>`can also be used to toggle buffer tags from current file.
* [lightline.vim](https://github.com/itchyny/lightline.vim): A light and configurable statusline/tabline for Vim.
* [NERD Tree](https://github.com/scrooloose/nerdtree): A tree explorer plugin for vim.
* [pathogen.vim](https://github.com/tpope/vim-pathogen): Manage your vim runtimepath .
* [ale](https://github.com/w0rp/ale): Syntax and lint checking for vim (async).
* [vim-commentary](https://github.com/tpope/vim-commentary): Comment stuff out.  Use `gcc` to comment out a line (takes a count), `gc` to comment out the target of a motion. `gcu` uncomments a set of adjacent commented lines.


## Key Mappings

The [leader](http://learnvimscriptthehardway.stevelosh.com/chapters/06.html#leader) is `,`, so whenever you see `<leader>` it means `,`.

## License
[MIT License](https://github.com/pyericz/vimrc/blob/master/LICENSE)
