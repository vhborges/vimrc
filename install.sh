#!/bin/bash

# Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Symbolic link .vimrc to home folder
echo "Installing '.vimrc'..."
if ! (ln -sf `pwd`/.vimrc ~/.vimrc); then
	exit 1

# Editor specific instalation (checks for neovim or vim)
if [ -x "$(command -v nvim)" ]; then
	echo "Found neovim.\nInstalling configurations..."
	if ! (mkdir -p ~/.config/nvim/ &&
		ln -sf `pwd`/init.vim ~/.config/nvim/init.vim &&
		ln -sf `pwd`/coc-settings.json ~/.config/nvim/coc-settings.json)
	then
		exit 1
	echo "Installing plugins..."
	if ! (nvim +PlugInstall +qall > /dev/null); then
		echo "Error while installing plugins. Please try again." 1>&2
		exit 1
elif [ -x "$(command -v vim)" ]; then
	echo "Found vim.\nInstalling plugins..."
	if ! (vim +PlugInstall +qall > /dev/null); then
		echo "Error while installing plugins. Please try again." 1>&2
		exit 1
else
	echo 'Error: neither vim nor neovim was found' 1>&2
	exit 1
fi
echo "Done!"
