#!/usr/bin/env bash

logn 'Installing vim-copilot plugin...'

if [ ! -d "$HOME/.vim/pack/plugins/start/vim-copilot/" ]; then
  git clone git@github.com:github/copilot.vim.git $HOME/.vim/pack/plugins/start/vim-copilot
  vim -u NONE -c "helptags $HOME/.vim/pack/plugins/start/vim-copilot/doc" -c -q
fi

logk
