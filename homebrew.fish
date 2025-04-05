# Initialize Homebrew environment variables by evaluating the output of 'brew shellenv'.
# This sets up the environment for Homebrew, ensuring that installed packages are accessible.
eval (/opt/homebrew/bin/brew shellenv)

# Disable shell sessions (history of previous sessions).
# Prevents the shell from saving and restoring sessions, which can save disk space and improve privacy.
set -gx SHELL_SESSIONS_DISABLE 1

# Configure Homebrew behavior.
set -gx HOMEBREW_NO_ENV_HINTS 1                  # Suppress environment variable hints from Homebrew.
set -gx HOMEBREW_NO_INSECURE_REDIRECT 1          # Prevent Homebrew from following insecure redirects.
# set -gx HOMEBREW_CASK_OPTS --require-sha         # Require SHA256 checksums for Cask downloads for security.
set -gx HOMEBREW_NO_ANALYTICS 1                  # Disable Homebrew's analytics data collection.

