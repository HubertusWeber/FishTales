# Set locale to US English with UTF-8 encoding.
# 'LANG' and 'LC_ALL' are environment variables that define language and regional settings.
set -gx LANG "en_US.UTF-8"
set -gx LC_ALL "en_US.UTF-8"

# Set XDG base directories for configuration, cache, data, and state files.
# These variables specify standard locations for user-specific files according to the XDG spec.
set -gx XDG_CONFIG_HOME "$HOME/.config"          # User-specific configuration files.
set -gx XDG_CACHE_HOME "$HOME/.cache"            # Non-essential cached data.
set -gx XDG_DATA_HOME "$HOME/.local/share"       # User-specific data files.
set -gx XDG_STATE_HOME "$HOME/.local/state"      # Data that should persist between reboots.

# Set development home directory.
# This is a custom directory for storing development-related files and tools.
set -gx DEV_HOME "$HOME/.dev"

# Set log home directory.
# This is a custom directory for storing log files I particularly care about.
set -gx LOG_HOME "$HOME/.local/log"

# Set global Git configuration file path to XDG config directory.
# Ensures Git uses the configuration file located in the standard XDG config directory.
set -gx GIT_CONFIG_GLOBAL "$XDG_CONFIG_HOME/git/gitconfig"

# Disable 'less' history by setting LESSHISTFILE to /dev/null.
# Prevents 'less' from storing command history, enhancing privacy.
set -gx LESSHISTFILE /dev/null

# Set default visual editor and command-line editor to neovim.
# 'VISUAL' is used by programs that can launch a visual editor.
# 'EDITOR' is the fallback for command-line editing tasks.
set -gx VISUAL "/Applications/Neovim.app/Contents/MacOS/Automator Application Stub"
set -gx EDITOR /opt/homebrew/bin/nvim

# Configure GHCUP to use XDG base directories.
# GHCUP is a Haskell toolchain installer; this setting directs it to use standard directories.
set -gx GHCUP_USE_XDG_DIRS 1

# Set OPAM root directory to $DEV_HOME/opam.
# OPAM is the OCaml package manager; this customizes its root directory.
set -gx OPAMROOT "$DEV_HOME/opam"

# Set Go workspace directory.
# 'GOPATH' specifies the location of your Go workspace.
set -gx GOPATH "$DEV_HOME/go"

# Set Python startup file to XDG config directory.
# This file is executed whenever the interactive Python interpreter is started.
set -gx PYTHONSTARTUP "$XDG_CONFIG_HOME/python/pythonrc"

# Set Rustup and Cargo home directories.
# 'RUSTUP_HOME' and 'CARGO_HOME' define where Rustup and Cargo store data.
set -gx RUSTUP_HOME "$DEV_HOME/rustup"
set -gx CARGO_HOME "$DEV_HOME/cargo"

# Set unison directory.
# Unison is used to sync Obsidian to iCloud
set -gx UNISON "$DEV_HOME/unison"

# Set Elan home directory (Lean language toolchain manager).
# Elan manages installations of the Lean theorem prover.
set -gx ELAN_HOME "$DEV_HOME/elan"

# Set Modular home directory.
# Used by the Mojo programming language
set -gx MODULAR_HOME "$DEV_HOME/modular"

# Set Cabal directory (Haskell package manager).
# Specifies where Cabal stores packages and configuration.
set -gx CABAL_DIR "$DEV_HOME/cabal"

# Set Stack root directory (Haskell build tool).
# Defines the root directory for Stack's configuration and build artifacts.
set -gx STACK_ROOT "$DEV_HOME/stack"

# Set Mix and Hex home directories (Elixir and Erlang tools).
# 'MIX_HOME' and 'HEX_HOME' specify where these tools store data.
set -gx MIX_HOME "$DEV_HOME/mix"
set -gx HEX_HOME "$DEV_HOME/hex"

# Set Agda configuration directory to XDG config directory.
# Agda is a dependently typed functional programming language and proof assistant.
set -gx AGDA_DIR "$XDG_CONFIG_HOME/agda"

# Set GnuPG home directory to XDG data directory.
# 'GNUPGHOME' specifies where GnuPG stores keys and configuration.
set -gx GNUPGHOME "$XDG_DATA_HOME/gnupg"

# Set linker flags to include Homebrew Ruby libraries.
# 'LDFLAGS' is used by the linker to find libraries during compilation.
set -gx LDFLAGS -L/opt/homebrew/opt/ruby/lib

# Set pkg-config path to include Ruby's pkgconfig directory.
# Helps compilation scripts find Ruby's installed packages.
set -gx PKG_CONFIG_PATH /opt/homebrew/opt/ruby/lib/pkgconfig

# Set compiler flags to include Ruby header files.
# 'CPPFLAGS' is used by the C preprocessor to find header files during compilation.
set -gx CPPFLAGS -I/opt/homebrew/opt/ruby/include

# Set Maven options to use XDG cache directory for local repository.
# 'MAVEN_OPTS' allows you to pass options to the JVM when running Maven.
set -gx MAVEN_OPTS "-Dmaven.repo.local=$XDG_CACHE_HOME/maven/repository"

# Set zoxide data directory to XDG data directory.
# Zoxide is a smarter cd command that learns your habits.
set -gx _ZO_DATA_DIR "$XDG_DATA_HOME"
