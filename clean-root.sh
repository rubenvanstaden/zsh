#!/bin/sh

set -ex

# Remove config files
rm -f "/root/.zshrc"
rm -f "/root/.zshenv"
rm -f "/root/.zcompdump" % compinit 

# Remove all plugins
rm -rf "/root/.zsh"
