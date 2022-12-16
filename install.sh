#!/bin/sh

set -ex

echo "Installing zsh for user: ${USER_PATH}"

# Install plugins
git clone https://github.com/rupa/z.git "${USER_PATH}/.zsh/z"
git clone https://github.com/zsh-users/zsh-completions.git "${USER_PATH}/.zsh/zsh-completions"
git clone https://github.com/zsh-users/zsh-autosuggestions "${USER_PATH}/.zsh/zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-history-substring-search.git "${USER_PATH}/.zsh/zsh-history-substring-search"

# Setup config
cp dot_zshrc "${USER_PATH}/.zshrc"
