
# Jumpstart

| Branch | Build Status |
| --------- | ----- | 
| `master` |  [![Build Status](https://travis-ci.com/adityarpillai/jumpstart.svg?branch=master)](https://travis-ci.com/adityarpillai/jumpstart)   |
| `dev`    | [![Build Status](https://travis-ci.com/adityarpillai/jumpstart.svg?branch=dev)](https://travis-ci.com/adityarpillai/jumpstart) |

**Jumpstart your Mac Development Environment.**

Jumpstart is a fully-fledged tool that quickly installs a development setup to your macOS computer and replaces the need for manually setting up dotfiles. Jumpstart implements the best practices and setups for all-around development environment.

### Installation

#### Method 1) Download the Latest Release
Since the virtual environment is included in the releases, you only need to follow a few steps to get everything installed.

1) Download [the latest release](https://github.com/adityarpillai/jumpstart/releases).
2) Unzip the file. 
3) Right click on `jumpstart` and click `Open`. 

#### Method 2) Cloning the Repository
Using Jumpstart by cloning the repository is also quite simple, simply run the following commands in the Terminal.

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
