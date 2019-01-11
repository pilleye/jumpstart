#!/usr/bin/env bash

# Abort on error
set -e

echo "Checking if Xcode Command Line tools are installed...";

# Checks if path to command line tools exist
# Credit: https://apple.stackexchange.com/questions/219507/best-way-to-check-in-bash-if-command-line-tools-are-installed
if type xcode-select >&- && xpath=$( xcode-select --print-path ) &&
  test -d "${xpath}" && test -x "${xpath}" ; then
  echo "Xcode Command Line tools are already installed..."; echo;
else
  echo "Installing Xcode Command Line Tools..."; echo;
  touch /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress;
  PROD=$(softwareupdate -l |
    grep "\*.*Command Line" |
    head -n 1 | awk -F"*" '{print $2}' |
    sed -e 's/^ *//' |
    tr -d '\n')
  softwareupdate -i "$PROD" --verbose;
fi
