#!/usr/bin/env bash

logn 'Installing vim-airline vim plugin...'

if [ ! -d "$HOME/.vim/pack/plugins/start/vim-airline/" ]; then
  git clone https://github.com/vim-airline/vim-airline.git $HOME/.vim/pack/plugins/start/vim-airline
  vim -u NONE -c "helptags $HOME/.vim/pack/plugins/start/vim-airline/doc" -c -q
fi

logk
