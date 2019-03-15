#!/usr/bin/env bash

logn 'Installing vim-terraform plugin...'

if [ ! -d "$HOME/.vim/pack/plugins/start/vim-terraform/" ]; then
  git clone git@github.com:hashivim/vim-terraform.git $HOME/.vim/pack/plugins/start/vim-terraform
  vim -u NONE -c "helptags $HOME/.vim/pack/plugins/start/vim-terraform/doc" -c -q
fi

logk
