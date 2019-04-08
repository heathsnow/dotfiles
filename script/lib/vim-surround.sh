#!/usr/bin/env bash

logn 'Installing vim-surround vim plugin...'

if [ ! -d "$HOME/.vim/pack/plugins/start/vim-surround/" ]; then
  git clone https://github.com/tpope/vim-surround.git $HOME/.vim/pack/plugins/start/vim-surround
  vim -u NONE -c "helptags $HOME/.vim/pack/plugins/start/vim-surround/doc" -c -q
fi

logk
