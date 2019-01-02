#!/usr/bin/env bash

# Abort on error
set -e

echo "Checking if Homebrew is already installed..."; echo;

# Checks if Homebrew is installed
# Credit: https://gist.github.com/codeinthehole/26b37efa67041e1307db
if test ! $(which brew); then
  echo "Homebrew not found..."; echo;
  echo "Follow instructions to install Homebrew..."; echo;
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "Homebrew is already installed..."; echo;
fi

