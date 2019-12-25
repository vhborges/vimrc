#!/bin/bash

# Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Symbolic link .vimrc to home folder
ln -sf `pwd`/.vimrc ~/.vimrc

# Editor specific instalation (checks for neovim or vim)
if [ -x "$(command -v nvim)" ]; then
  mkdir -p ~/.config/nvim/
  ln -sf `pwd`/init.vim ~/.config/nvim/init.vim
  ln -sf `pwd`/coc-settings.json ~/.config/nvim/coc-settings.json
  nvim +PlugInstall +qall > /dev/null
elif [ -x "$(command -v vim)" ]; then
  vim +PlugInstall +qall > /dev/null
else
  echo 'Error: neither vim nor neovim was found' >&2
fi
