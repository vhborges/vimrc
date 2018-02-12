# vimrc
My .vimrc backup including some plugins (installed and managed by Vundle).

## Dependencies
- vim 7.5 or newer (remove "set termguicolors" in **.vimrc** in case you use a older version)
- git

## Instalation
```
git clone https://github.com/ViniciusBorges22/vimrc.git ~/vimrc_backup && cd ~/vimrc_backup
./install.sh
```

If you plan to use the YouCompleteMe plugin, make sure you have the following packages:
- build-essential
- cmake
- python-dev
- python3-dev

Then run:
```
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer
```
