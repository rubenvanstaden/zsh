#!/bin/sh

set -ex

cp "$HOME/.zshenv" dot_zshenv
cp -R "$HOME/.zsh" dot_zsh
cp -R "$HOME/.config/zsh" dot_config_zsh
