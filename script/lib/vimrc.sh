#!/usr/bin/env bash

logn 'Setting vimrc defaults...'

grep -q -F 'syntax on' $HOME/.vimrc || echo 'syntax on' >> $HOME/.vimrc
grep -q -F 'set tabstop=2' $HOME/.vimrc || echo 'set tabstop=2' >> $HOME/.vimrc
grep -q -F 'set shiftwidth=2' $HOME/.vimrc || echo 'set shiftwidth=2' >> $HOME/.vimrc
grep -q -F 'set expandtab' $HOME/.vimrc || echo 'set expandtab' >> $HOME/.vimrc
grep -q -F 'set shell=bash\ -l' $HOME/.vimrc || echo 'set shell=bash\ -1' >> $HOME/.vimrc

logk
