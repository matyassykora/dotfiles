# zinit + plugins dir
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# download zinit
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"

# source zinit
source "${ZINIT_HOME}/zinit.zsh"

# add zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# add snippets
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins
# zinit snippet OMZP::git
# zinit snippet OMZP::command-not-found
# zinit snippet OMZP::common-aliases

# autoload completions
autoload -U compinit && compinit

zinit cdreplay -q

# init
## oh-my-posh
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/config.json)"
## zoxide
eval "$(zoxide init --cmd cd zsh)"

# binds
## emacs mode
bindkey -e
## history search
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

# history
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# completion style
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'

# aliases
<<<<<<< HEAD
alias ls='ls --color'
alias l='ls -la'
alias ll='ls -l'
=======
alias ls='ls -h --color'
alias l='ls -la'
alias ll='ls -l'
alias gc='git commit'
>>>>>>> fb39fc5 (Move to stow & oh-my-posh)
alias vim=nvim
alias pt=personal-todos
alias np=noteparse
alias sc=search-content
alias fv="nvim \$(fzf)"
alias fman="compgen -c | fzf | xargs man"
duh ()
{
    arg=$1
    if [[ ! $arg ]]; then
        arg=10
    fi
    du -ah . | sort -hr | head -n $arg
}

# todo stuff - maybe remove
if [ -f /home/maty/.todo/.todo.comp ]; then
    source /home/maty/.todo/.todo.comp
    compdef _todo todo
fi

# options
setopt autocd

# shell integrations
eval "$(fzf --zsh)"

# exports 
export PATH=$HOME/.scripts:$HOME/.config/composer/vendor/friendsoftwig/twigcs/bin:$HOME/go/bin:$PATH
export EDITOR="/usr/bin/nvim"
## fzf
export FZF_DEFAULT_COMMAND="fd . $HOME"
export FZF_DEFAULT_OPTS='--height 60%'
## rofi web search
export DDG_ARGS='["-n", 5]'
export ROFI_SEARCH='ddgr'

# ssh keychain
eval $(keychain --eval --quiet ~/.ssh/id_ed25519)
