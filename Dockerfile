FROM alpine:edge

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
RUN git clone https://github.com/rupa/z.git "$HOME/.zsh/z"
RUN git clone https://github.com/zsh-users/zsh-completions.git "$HOME/.zsh/zsh-completions"
RUN git clone https://github.com/zsh-users/zsh-autosuggestions "$HOME/.zsh/zsh-autosuggestions"
RUN git clone https://github.com/zsh-users/zsh-history-substring-search.git "$HOME/.zsh/zsh-history-substring-search"

WORKDIR /root

COPY dot_zshenv /root/.zshenv

COPY dot_zshrc /root/.config/zsh/.zshrc