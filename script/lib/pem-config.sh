#!/usr/bin/env bash

logn "Moving *.pem files from $HOME/Downloads/ to $HOME/.ssh/..."

count=`ls -1 *.pem 2>/dev/null | wc -l`
if [ $count != 0 ]; then
  mv -f $HOME/Downloads/*.pem $HOME/.ssh/
  chmod 400 $HOME/.ssh/*.pem
fi

logk
