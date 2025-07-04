# Add Homebrew's fish completions directories to 'fish_complete_path' if they exist.
# This enhances shell completions for commands installed via Homebrew.
if test -d (brew --prefix)"/share/fish/completions"
    set -p fish_complete_path (brew --prefix)/share/fish/completions
end

if test -d (brew --prefix)"/share/fish/vendor_completions.d"
    set -p fish_complete_path (brew --prefix)/share/fish/vendor_completions.d
end

exercism completion fish | source
