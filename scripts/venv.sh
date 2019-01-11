#!/usr/bin/env bash

# Abort on error
set -e

# Remove any existing virtualenv
rm -Rf .venv

# Creating virtualenv
echo "Creating python virtual environment in ./.venv/ folder..."; echo;
/usr/local/bin/virtualenv -p /usr/local/bin/python3 .venv &> /dev/null