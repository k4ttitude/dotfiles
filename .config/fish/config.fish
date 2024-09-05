if status is-interactive
    # Commands to run in interactive sessions can go here
    set -gx PAGER less
    set -gx EDITOR nvim
    set -gx VISUAL nvim


    # ---- paths ----
    fish_add_path /usr/local/bin
    fish_add_path $HOME/.local/bin

    # rust
    fish_add_path $HOME/.cargo/bin

    # gcc
    fish_add_path /opt/homebrew/opt/avr-gcc@8/bin
    fish_add_path /opt/homebrew/opt/arm-none-eabi-binutils/bin

    # pyenv
    set -Ux PYENV_ROOT $HOME/.pyenv
    fish_add_path $PYENV_ROOT/bin
    pyenv init - | source

    # Haskell
    fish_add_path $HOME/.ghcup/bin:$HOME/.cabal/bin
    fish_add_path /opt/homebrew/opt/llvm@12/bin

    # postgresql
    fish_add_path "/opt/homebrew/opt/postgresql@12/bin"
    export LDFLAGS="-L/opt/homebrew/opt/postgresql@12/lib"
    export CPPFLAGS="-I/opt/homebrew/opt/postgresql@12/include"

    # openjdk@11
    fish_add_path /opt/homebrew/opt/openjdk/bin
    #set -gx CPPFLAGS "-I/opt/homebrew/opt/openjdk/include"

    # pnpm
    export PNPM_HOME="/Users/kattitude/Library/pnpm"
    fish_add_path "$PNPM_HOME"

    # SQLite
    fish_add_path /opt/homebrew/opt/sqlite/bin

    # ---- aliases ----
    alias g=git
    alias p=pnpm
    alias nv=nvim

    # aliases:dotfiles
    alias config='/opt/homebrew/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

    # ---- key bindings ----
    fish_vi_key_bindings

    bind yy fish_clipboard_copy
    bind p fish_clipboard_paste

    bind -M insert \cl forward-bigword
    bind -M insert \ch backward-kill-bigword
    bind -M insert \cn history-prefix-search-forward
    bind -M insert \cp history-prefix-search-backward
    bind -M insert \ck 'clear; commandline -f repaint'
    bind -M normal \ck 'clear; commandline -f repaint'

    # nvm
    # load_nvm > /dev/stderr

    # fzf key bindings
    # fzf --fish | source
    _fzf_uninstall_bindings
    bind -m fzf \cf ''
    bind -M insert -m fzf \cf ''

    bind -M fzf -m insert p _fzf_search_processes
    bind -M fzf -m insert v _fzf_search_variables
    bind -M fzf -m insert d _fzf_search_directory
    bind -M fzf -m insert l _fzf_search_git_log
    bind -M fzf -m insert s _fzf_search_git_status
    bind -M fzf -m insert \e cancel-commandline
end
