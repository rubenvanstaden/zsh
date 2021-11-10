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
./clean.sh
# Install plugins and configutation
./install.sh
# Compare local changes with remote
./compare.sh
```

```shell
# Test in a docker container
docker build -t zsh-image .
docker run -it --rm zsh-image zsh
```

Installed plugins

* [z](https://github.com/rupa/z)
* [pure](https://github.com/sindresorhus/pure)
* [zsh-completions](https://github.com/zsh-users/zsh-completions)
* [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
* [zsh-history-substring-search](https://github.com/zsh-users/zsh-history-substring-search)
