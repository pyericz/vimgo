#!/bin/sh
echo 'Installing...'

set -e
cd ~/.havim
echo 'set runtimepath+=~/.havim
source ~/.havim/vimrcs/plugins.vim
source ~/.havim/vimrcs/basic.vim
source ~/.havim/vimrcs/filetypes.vim
source ~/.havim/vimrcs/plugins_config.vim
source ~/.havim/vimrcs/extended.vim
source ~/.havim/vimrcs/keymap.vim
try
source ~/.havim/my_configs.vim
catch
endtry' > ~/.vimrc

vim +PlugInstall +qall

echo 'Completed! Enjoy!'
