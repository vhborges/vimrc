# vimrc
My .vimrc backup including some plugins (installed and managed by [Vundle](https://github.com/VundleVim/Vundle.vim).

## Dependencies
- vim 7.5 or newer (remove "set termguicolors" in **.vimrc** in case you use a older version)
- git

## Instalation
```
git clone https://github.com/ViniciusBorges22/vimrc.git
cd vimrc
./install.sh
```
During instalation you will see an error regarding the gruvbox color scheme. Just ignore it, this plugin will be installed automatically.

If you plan to use the [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) plugin, make sure you have the following packages:
- build-essential
- cmake
- python-dev
- python3-dev

Then copy and paste on your terminal:
```
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer
```
