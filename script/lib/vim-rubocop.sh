#!/usr/bin/env bash

logn 'Installing vim-rubocop plugin...'

if [ ! -d "$HOME/.vim/pack/plugins/start/vim-rubocop/" ]; then
  git clone git@github.com:hashivim/vim-rubocop.git $HOME/.vim/pack/plugins/start/vim-rubocop
  vim -u NONE -c "helptags $HOME/.vim/pack/plugins/start/vim-rubocop/doc" -c -q
fi

logk
