#!/usr/bin/env bash

logn 'Installing vim-fugitive plugin...'

if [ ! -d "$HOME/.vim/pack/plugins/start/vim-fugitive/" ]; then
  git clone git@github.com:tpope/vim-fugitive.git $HOME/.vim/pack/plugins/start/vim-fugitive
  vim -u NONE -c "helptags $HOME/.vim/pack/plugins/start/vim-fugitive/doc" -c -q
fi

logk
