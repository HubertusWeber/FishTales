# Initialize PATH variable with essential system directories.
# The 'set -gx PATH' commands build the PATH variable step by step.
set -gx PATH /sbin                              # System binaries (superuser only).
set -gx PATH /usr/sbin $PATH                    # Additional system binaries.
set -gx PATH /bin $PATH                         # Essential command binaries.
set -gx PATH /usr/bin $PATH                     # Standard user command binaries.
set -gx PATH /usr/local/bin $PATH               # User-installed binaries.

# Add macOS system directories and TeX binaries to PATH.
set -gx PATH /System/Cryptexes/App/usr/bin $PATH # macOS system binaries for specific apps.
set -gx PATH /Library/TeX/texbin $PATH           # LaTeX binaries for TeX distribution.

# Add Homebrew sbin and bin directories to PATH.
set -gx PATH /opt/homebrew/sbin $PATH            # Homebrew system binaries.
set -gx PATH /opt/homebrew/bin $PATH             # Homebrew user binaries.

# Add LLVM, Ruby, GNU grep, and OpenJDK binaries to PATH.
set -gx PATH /opt/homebrew/opt/llvm/bin $PATH        # LLVM compiler tools.
set -gx PATH /opt/homebrew/opt/ruby/bin $PATH        # Ruby language binaries.
set -gx PATH /opt/homebrew/opt/grep/libexec/gnubin $PATH  # GNU grep binaries over BSD grep.
set -gx PATH /opt/homebrew/opt/openjdk/bin $PATH     # Java Development Kit binaries.

# Add development tools and local bin directories to PATH.
set -gx PATH "$DEV_HOME/elan/bin" $PATH           # Lean language binaries managed by Elan.
set -gx PATH "$DEV_HOME/go/bin" $PATH             # Go language binaries.
set -gx PATH "$DEV_HOME/cargo/bin" $PATH          # Rust binaries installed by Cargo.
set -gx PATH "$HOME/.dotnet/tools" $PATH          # .net Tools.
set -gx PATH "$HOME/.mint/bin" $PATH
set -gx PATH "$HOME/.local/bin" $PATH             # User's local binaries.
