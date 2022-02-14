# ZSH

Configuration for [Zsh](https://zsh.sourceforge.io/).

```shell
# Install zsh
sudo apt install zsh
# Set zsh as default
chsh -s $(which zsh)
```

```shell
# Make sure your system is clean
./scripts/clean.sh
# Install plugins and configutation
./scripts/install.sh
# Compare local changes with remote
./scripts/compare.sh
```

```shell
# Test in a docker container
docker build -t zsh-image .
docker run -it --rm zsh-image zsh
```

## Installed plugins

* [z](https://github.com/rupa/z)
* [pure](https://github.com/sindresorhus/pure)
* [zsh-completions](https://github.com/zsh-users/zsh-completions)
* [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
* [zsh-history-substring-search](https://github.com/zsh-users/zsh-history-substring-search)

## Tutorials

- [Mastering Zsh](https://github.com/rothgar/mastering-zsh)
- [Zsh completion guide](https://thevaluable.dev/zsh-completion-guide-examples/)
- [Configure Zsh without dependencies](https://thevaluable.dev/zsh-install-configure-mouseless/)
