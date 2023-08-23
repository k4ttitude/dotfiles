if status is-interactive
    # Commands to run in interactive sessions can go here
    set -gx PAGER less
    set -gx EDITOR nvim
    set -gx VISUAL nvim


    # ---- paths ----
    fish_add_path /usr/local/bin
    fish_add_path $HOME/.local/bin


    # pnpm
    export PNPM_HOME="/Users/kattitude/Library/pnpm"
    fish_add_path "$PNPM_HOME"

    # ---- aliases ----
    alias g=git
    alias p=pnpm
    alias nv=nvim

    # aliases:dotfiles
    alias config='git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

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
end
