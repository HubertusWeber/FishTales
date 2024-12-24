# Define command aliases for convenience and efficiency.
alias gg="gitui"             # Shortcut for 'gitui', a terminal UI for Git.
alias ls="eza"               # Replace 'ls' with 'eza', an enhanced version with more features.
alias lst="eza --tree"       # Alias to list files in tree view.
alias lsl="eza -al"          # Alias to list all files with detailed info.
alias cdc="cd -"             # Alias to go back to the last working directory.
alias cp="xcp -r"            # An extended `cp` (recursive by default.)
alias vim="nvim"             # Use 'nvim' when 'vim' is called; Neovim is an improved version of Vim.
alias e="nvim"               # Short alias for opening Neovim.
alias th="thokr -f 3"        # Start a typing practice session with three sentences.
alias clj="clojure -A:no-history"  # Run Clojure without recording REPL history.
alias rm="echo Use 'rip' instead of rm."  # Prevent accidental deletion by advising to use 'rip'.
alias rip="rip --graveyard ~/.Trash"      # 'rip' moves files to a graveyard directory instead of deleting.
alias cat="bat --paging=never --theme=Nord" # A cat(1) clone with wings.
alias hack="cargo hack check --feature-powerset --all-targets && cargo hack clippy --feature-powerset --all-targets" # Runs full static analysis suite: cargo check & clippy across all feature combinations and targets

# Opens Home.md in Notes directory while preserving current location.
function notes
    pushd ~/Notes
    nvim .
    popd
end

# Opens Home.md in Notes directory while preserving current location.
function obs
    pushd ~/Notes
    nvim !Home.md
    popd
end

# Opens Todo.md in Notes directory while preserving current location.
function todo
    pushd ~/Notes
    nvim Todo.md
    popd
end

# Opens Scratch.md in Notes directory while preserving current location.
function scr
    pushd ~/Notes
    nvim Scratch.md
    popd
end
