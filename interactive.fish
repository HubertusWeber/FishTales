# If the shell is interactive, initialize fzf, zoxide, and starship.
if status --is-interactive
    # Set LS_COLORS environment variable using 'vivid' with 'gruvbox-dark' color scheme.
    set -gx LS_COLORS (vivid generate nord)
    # Initialize fzf key bindings and completions for fish.
    fzf --fish | source
    # Initialize zoxide, a smarter 'cd' command that learns your habits.
    zoxide init fish --cmd cd | source
    # Initialize starship, a cross-shell prompt.
    starship init fish | source
end
