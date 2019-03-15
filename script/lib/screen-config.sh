#!/usr/bin/env bash

logn 'Configure `screen` start-up to use a login shell...'

grep -q -F 'shell -$SHELL' $HOME/.screenrc || echo 'shell -$SHELL' >> $HOME/.screenrc

logk
