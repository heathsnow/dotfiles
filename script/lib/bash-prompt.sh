#!/usr/bin/env bash

logn 'Setting up bash prompt to be awesome...'

if [ ! -f $HOME/.git-prompt.bash ]; then
  cp -rf $HOME/.dotfiles/files/.git-prompt.bash $HOME/.git-prompt.bash
fi

if [ ! -f $HOME/.git-completion.bash ]; then
  wget -O $HOME/.git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
fi

logk
