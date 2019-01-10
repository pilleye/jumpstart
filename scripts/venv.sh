#!/usr/bin/env bash

# Abort on error
set -e

# Remove any existing virtualenv
echo "Removing any existing virtual environment"
rm -Rf .venv

# Creating virtualenv
echo "Creating python virtual environment in ./.venv/ folder..."; echo;
/usr/local/bin/virtualenv -p python3 .venv