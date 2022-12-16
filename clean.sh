#!/bin/sh

set -ex

echo "Cleaning zsh for user: ${USER_PATH}"

# Remove config files
rm -f "${USER_PATH}/.zshrc"
rm -f "${USER_PATH}/.zcompdump" % compinit 

# Remove all plugins
rm -rf "${USER_PATH}/.zsh"
