export PATH=/usr/local/bin:$PATH
export PATH=$HOME/.local/bin:$PATH

# python@3.9
export PATH=/Users/kattitude/Library/Python/3.9/bin:$PATH

alias python3=/opt/homebrew/bin/python3.9
alias pip3=/opt/homebrew/bin/pip3.9

# Haskell
export PATH=$HOME/.ghcup/bin:$HOME/.cabal/bin:$PATH
export PATH=/opt/homebrew/opt/llvm@12/bin:$PATH

# postgresql
export PATH="/opt/homebrew/opt/postgresql@12/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/postgresql@12/lib"
export CPPFLAGS="-I/opt/homebrew/opt/postgresql@12/include"

# openjdk@11
export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"
#export CPPFLAGS="-I/opt/homebrew/opt/openjdk@11/include"

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"


ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  vi-mode
  z
  zsh-autosuggestions
  zsh-syntax-highlighting
  pip
  docker
  docker-compose
)

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias y=yarn
alias p=pnpm
alias nv=nvim

bindkey -M viins "\C-p" up-line-or-beginning-search
bindkey -M viins "\C-n" down-line-or-beginning-search
bindkey -M viins "\C-l" end-of-line
bindkey -M viins "\C-h" backward-kill-word

# pnpm
export PNPM_HOME="/Users/kattitude/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"

export PATH="/opt/homebrew/opt/sqlite/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/zlib/lib"
export CPPFLAGS="-I/opt/homebrew/opt/zlib/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/zlib/lib/pkgconfig"

# dotfiles
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
