#!/bin/sh

set -ex

rm "$HOME/.zshenv"
rm -rf "$HOME/.zsh"
rm -rf "$HOME/.config/zsh"

mkdir -p "$HOME/.zsh"

# Install plugins
git clone https://github.com/rupa/z.git "$HOME/.zsh/z"
git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"
git clone https://github.com/zsh-users/zsh-completions.git "$HOME/.zsh/zsh-completions"
git clone https://github.com/zsh-users/zsh-autosuggestions "$HOME/.zsh/zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-history-substring-search.git "$HOME/.zsh/zsh-history-substring-search"

# Setup config
cp dot_zshenv "$HOME/.zshenv"
cp -R dot_config_zsh "$HOME/.config/zsh" 
