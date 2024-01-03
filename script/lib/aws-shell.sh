#!/usr/bin/env bash

logn 'Installing aws-shell tool...'

if [ -x "$(command -v aws-shell)" ]; then
  echo 'aws-shell is already installed, skipping...'
else
  pip install aws-shell
fi

logk
