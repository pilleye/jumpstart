#!/usr/bin/env bash


# Abort on error
set -e


echo "Installing Python 3 through Homebrew..."; echo;
# Install Python through Homebrew
brew install python3

echo "Installing virtualenv package through pip3..."; echo;
pip3 install virtualenv