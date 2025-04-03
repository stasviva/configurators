#!/bin/sh

PY_2_VER=2.7.18
PY_3_VER=3.13.0
brew update
#pyenv
touch .bash_pythons && touch .bash_python_functions.sh && brew install pyenv
source ~/.bash_profile
pyenv install ${PY_2_VER}
source ~/.bash_profile
pyenv install ${PY_3_VER} && pyenv global ${PY_3_VER} && brew install openssl@3.0
brew install --cask pycharm-ce
# Check if pyenv-virtualenv is Installed Run
pyenv commands | grep virtualenv
# Install pyenv-virtualenv Plugin On macOS with Homebrew:
# brew install pyenv-virtualenv
# # Configure Shell to Use pyenv-virtualenv Add the following to your .bash_profile, .zshrc, or .bashrc:
# export PATH="$HOME/.pyenv/bin:$PATH"
# eval "$(pyenv init --path)"
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"
# # Then reload your shell:
# source ~/.zshrc  # or source ~/.bash_profile
# # Verify Installation Check if the virtualenv command works:
# pyenv virtualenv --version

# brew install pyenv-virtualenv && pyenv virtualenv --version
