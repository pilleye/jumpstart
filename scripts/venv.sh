#!/usr/bin/env bash

# Abort on error
set -e

# Creating virtualenv
echo "Creating python virtual environment in ./.venv/ folder..."; echo;
virtualenv -p python3 .venv