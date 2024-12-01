# Disable the default fish greeting message by setting 'fish_greeting' to an empty value.
# This prevents the default welcome message from appearing when opening a new shell.
set -U fish_greeting

# Determine the directory where this configuration script is located.
# 'status --current-filename' returns the full path of the currently executing script.
# Using 'dirname', we extract the directory part from this path.
# This ensures that any sourced files are referenced relative to this script's location,
# allowing the configuration to be portable and work correctly regardless of how it's invoked.
set config_dir (dirname (status --current-filename))

# Initialize Homebrew's environment variables and set configuration options.
source $config_dir/homebrew.fish

# Set environment variables.
source $config_dir/env.fish

# Construct the PATH environment variable, adding all directories where executable programs are located.
source $config_dir/path.fish

# Define command aliases, which are shortcuts or custom commands that expand to longer command sequences or options.
source $config_dir/alias.fish

# Set up custom command completions, enhancing the shell's auto-completion features.
source $config_dir/completions.fish

# This file contains configurations that should only be executed in interactive shells.
source $config_dir/interactive.fish

