#!/bin/sh

set -ex

ZSH_PLUGIN="$HOME/.zsh"

# Install plugins
git clone https://github.com/rupa/z.git "$ZSH_PLUGIN/z"
git clone https://github.com/sindresorhus/pure.git "$ZSH_PLUGIN/pure"
git clone https://github.com/zsh-users/zsh-completions.git "$ZSH_PLUGIN/zsh-completions"
git clone https://github.com/zsh-users/zsh-autosuggestions "$ZSH_PLUGIN/zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-history-substring-search.git "$ZSH_PLUGIN/zsh-history-substring-search"

# Setup config
cp dot_zshrc "$HOME/.zshrc"
cp dot_zshenv "$HOME/.zshenv"
