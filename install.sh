#!/bin/bash

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -s -f `pwd`/.vimrc ~/.vimrc
if [ -x "$(command -v nvim)" ]; then
  mkdir -p ~/.config/nvim/
  ln -s -f `pwd`/init.vim ~/.config/nvim/init.vim
  ln -s -f `pwd`/coc-settings.json ~/.config/nvim/coc-settings.json
  nvim +PlugInstall +qall > /dev/null
elif [ -x "$(command -v vim)" ]; then
  vim +PlugInstall +qall > /dev/null
else
  echo 'Error: neither vim nor neovim is installed' >&2
fi
