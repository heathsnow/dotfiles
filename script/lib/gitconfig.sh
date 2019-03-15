#!/usr/bin/env bash

logn 'Updating ~/.gitconfig...'

git config --global color.ui auto
git config --global browser.ch.cmd "open -a \"/Applications/Google Chrome.app\""

logk
