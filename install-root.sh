#!/bin/sh

set -ex

ROOT="/root"

# Install plugins
git clone https://github.com/rupa/z.git "$ROOT/.zsh/z"
git clone https://github.com/sindresorhus/pure.git "$ROOT/.zsh/pure"
git clone https://github.com/zsh-users/zsh-completions.git "$ROOT/.zsh/zsh-completions"
git clone https://github.com/zsh-users/zsh-autosuggestions "$ROOT/.zsh/zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-history-substring-search.git "$ROOT/.zsh/zsh-history-substring-search"

# Setup config
cp dot_zshrc "$ROOT/.zshrc"
cp dot_zshenv "$ROOT/.zshenv"
