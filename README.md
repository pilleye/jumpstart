
# Jumpstart

Master Branch: [![Build Status](https://travis-ci.com/adityarpillai/macOS-developer-setup.svg?branch=master)](https://travis-ci.com/adityarpillai/macOS-developer-setup)

Development Branch: [![Build Status](https://travis-ci.com/adityarpillai/macOS-developer-setup.svg?branch=dev)](https://travis-ci.com/adityarpillai/macOS-developer-setup)

**Jumpstart your Mac Development Environment.**

Jumpstart is a fully-fledged tool that quickly installs a development setup to your macOS computer and replaces the need for manually setting up dotfiles. Jumpstart implements the best practices and setups for all-around development environment.

### Installation

Using Jumpstart is a straightforward process, simply run the following commands in the Terminal.
```bash
# Install pip (if it does not exist).
sudo easy_install pip

# Install virtualenv.
pip install virtualenv

# Clone the repository to the current directory.
git clone https://github.com/adityarpillai/jumpstart.git

# Change directory into the repository.
cd jumpstart

# Create a python virtual environment.
virtualenv .venv

# Run the installation script.
./jumpstart
```

Visit https://jumpstart.pillai.io for more details.
