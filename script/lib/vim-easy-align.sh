#!/usr/bin/env bash

logn 'Installing vim-easy-align plugin...'

if [ ! -d "$HOME/.vim/pack/plugins/start/vim-easy-align/" ]; then
  git clone git@github.com:junegunn/vim-easy-align.git $HOME/.vim/pack/plugins/start/vim-easy-align
  vim -u NONE -c "helptags $HOME/.vim/pack/plugins/start/vim-easy-align/doc" -c -q
fi

logk
