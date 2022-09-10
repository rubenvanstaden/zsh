#!/bin/sh

set -ex

# Remove config files
rm -f "$HOME/.zshrc"
rm -f "$HOME/.zshenv"
rm -f "$HOME/.zcompdump" % compinit 

# Remove all plugins
rm -rf "$HOME/.zsh"
