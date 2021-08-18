#!/usr/bin/env bash

logn 'Installing vim-hcl plugin...'

if [ ! -d "$HOME/.vim/pack/jvirtanen/start/" ]; then
  git clone git://github.com/jvirtanen/vim-hcl.git $HOME/.vim/pack/jvirtanen/start
  vim -u NONE -c "helptags $HOME/.vim/pack/jvirtanen/start/doc" -c -q
fi

logk

mkdir -p ~/.vim/pack/jvirtanen/start
cd ~/.vim/pack/jvirtanen/start
git clone git://github.com/jvirtanen/vim-hcl.git
