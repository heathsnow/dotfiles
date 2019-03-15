#!/usr/bin/env bash

# For the Chef setup you should have already downloaded your chef_user.pem to $HOME/.chef/
# To update $HOME/.chef/knife.rb please delete any existing knife.rb file and rerun Strap.

logn 'Setting up Chef...'

if [ ! -d "$HOME/git/chef-repo" ]; then
  git clone git@github.com:daptiv/chef-repo.git $HOME/git/chef-repo
fi

if [ ! -f $HOME/.chef/knife.rb ]; then
  knife configure --defaults -s https://manage.chef.io/organizations/daptiv -r $HOME/git/chef-repo
fi

logk

logn "Moving Chef encryption keys from $HOME/Downloads/ to $HOME/.chef/..."

mv $HOME/Downloads/encrypt* $HOME/.chef/ &>/dev/null
mv $HOME/Downloads/ops_encrypt* $HOME/.chef/ &>/dev/null

logk
