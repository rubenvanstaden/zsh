# ZSH

Configuration for [Zsh](https://zsh.sourceforge.io/).

```shell
# Set user
chsh -s $(which zsh)

# Set root
sudo chsh -s $(which zsh)
```

```shell
# Make sure your system is clean
USER_PATH=$HOME ./clean.sh
USER_PATH=/root ./clean.sh

# Install plugins and configutation
USER_PATH=$HOME ./install.sh
USER_PATH=/root ./install.sh

# Compare local changes with remote
./compare.sh
```

## References

- [Mastering Zsh](https://github.com/rothgar/mastering-zsh)
- [Zsh completion guide](https://thevaluable.dev/zsh-completion-guide-examples/)
- [Configure Zsh without dependencies](https://thevaluable.dev/zsh-install-configure-mouseless/)
