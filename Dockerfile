FROM alpine:edge

# Install dependencies
RUN apk update \
  && apk add \
    curl \
    zsh \
    git \
    neovim \
    --update

RUN mkdir -p "$HOME/.zsh"
RUN git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"

# Install zsh packages
RUN git clone https://github.com/rupa/z.git ~/.zsh/z
RUN git clone https://github.com/zsh-users/zsh-completions.git ~/.zsh/zsh-completions
RUN git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

WORKDIR /root

COPY dot_zshrc /root/.zshrc
