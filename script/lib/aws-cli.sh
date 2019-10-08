#!/usr/bin/env bash

logn 'Installing AWS CLI tool...'

if [ -x "$(command -v aws)" ]; then
  echo 'AWS CLI is already installed, skipping...'
else
  curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
  unzip awscli-bundle.zip
  sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
fi

logk
