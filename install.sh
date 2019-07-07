#!/bin/bash

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -s -f `pwd`/.vimrc ~/.vimrc
ln -s -f `pwd`/init.vim ~/.config/nvim/init.vim
ln -s -f `pwd`/coc-settings.json ~/.config/nvim/coc-settings.json
vim +PluginInstall +qall
