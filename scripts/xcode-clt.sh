#!/usr/bin/env bash

# Abort on error
set -e

echo "Checking if Xcode Command Line tools are installed..."; echo;

# Checks if path to command line tools exist
# Credit: https://apple.stackexchange.com/questions/219507/best-way-to-check-in-bash-if-command-line-tools-are-installed
if type xcode-select >&- && xpath=$( xcode-select --print-path ) &&
  test -d "${xpath}" && test -x "${xpath}" ; then
  echo "Xcode Command Line tools are already installed..."; echo;
else
  echo "Xcode Command Line tools not found..."; echo;
  echo "Follow instructions in the GUI to install Command Line Tools..."; echo;
  xcode-select --install
fi
