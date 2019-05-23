#!/bin/sh
echo 'Installing...'

VIM_ROOT=$HOME/.vimgo

echo "let g:root_path = '$VIM_ROOT/'" > $VIM_ROOT/vimrcs/path.vim

echo "set runtimepath+=$VIM_ROOT
source $VIM_ROOT/vimrcs/path.vim
source $VIM_ROOT/vimrcs/plugins.vim
source $VIM_ROOT/vimrcs/basic.vim
source $VIM_ROOT/vimrcs/filetypes.vim
source $VIM_ROOT/vimrcs/plugins_config.vim
source $VIM_ROOT/vimrcs/extended.vim
source $VIM_ROOT/vimrcs/keymap.vim
try
source $VIM_ROOT/my_configs.vim
catch
endtry" > ~/.vimrc

vim +PlugInstall +qall

echo 'Completed! Enjoy!'
