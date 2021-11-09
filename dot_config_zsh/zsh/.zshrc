# ~/.zshrc

# Plugins
fpath+="$HOME/.zsh/pure"
fpath+="$HOME/.zsh/zsh-completions"

. "$HOME/.zsh/z/z.sh"

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh

bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

zmodload zsh/complist

bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

autoload -U promptinit; promptinit
prompt pure

# optionally define some options
PURE_CMD_MAX_EXEC_TIME=10

# change the path color
zstyle :prompt:pure:path color white

# change the color for both `prompt:success` and `prompt:error`
zstyle ':prompt:pure:prompt:*' color cyan

# turn on git stash status
zstyle :prompt:pure:git:stash show yes

prompt pure

bindkey -v
export KEYTIMEOUT=1

# autoload -Uz edit-command-line
# zle -N edit-command-line
# bindkey -M vicmd v edit-command-line

# -- Aliases general
alias rm="rm -rf"
alias -g G='| grep -i'
alias ls='ls --color=tty'
alias reload="source ~/.zshrc"
alias shutdown="shutdown -h now"
alias myip="curl http://ipecho.net/plain; echo"
alias grep='grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}'

# -- Aliases navigation
alias t1="tree -L 1 ."
alias t2="tree -L 2 ."
alias t3="tree -L 3 ."
alias t4="tree -L 4 ."

# -- Aliases configuration
alias dz="nvim ~/.zshrc"
alias di="nvim ~/.config/i3/config"
alias dn="cd ~/.config/nvim && nvim"
alias da="nvim ~/.config/alacritty/alacritty.yml"

# -- Change directory
alias ~="cd ~"
alias .="cd .."
alias ..="cd ../.."
alias ...="cd ../../.."
alias ....="cd ../../../.."

cursor_mode() {
    # See https://ttssh2.osdn.jp/manual/4/en/usage/tips/vim.html for cursor shapes
    cursor_block='\e[2 q'
    cursor_beam='\e[6 q'

    function zle-keymap-select {
        if [[ ${KEYMAP} == vicmd ]] ||
            [[ $1 = 'block' ]]; then
            echo -ne $cursor_block
        elif [[ ${KEYMAP} == main ]] ||
            [[ ${KEYMAP} == viins ]] ||
            [[ ${KEYMAP} = '' ]] ||
            [[ $1 = 'beam' ]]; then
            echo -ne $cursor_beam
        fi
    }

    zle-line-init() {
        echo -ne $cursor_beam
    }

    zle -N zle-keymap-select
    zle -N zle-line-init
}

cursor_mode
