# 🐟 FishTales

Like a well-maintained aquarium, this setup keeps things clean, organized, and beautiful to look at.

> **Note**: This setup is very personalized. While you're completely free to use it however you want, I recommend going through the configuration files first and adjusting them to your needs. Delete anything you don't need and modify what's left to better suit your workflow. The comments should make it easy to understand what each part does.

## 🌊 Features

- **Modular Design**: Each aspect of the configuration lives in its own file, making it easy to understand and customize
- **Clean Home Directory**: Configured to keep your home directory as pristine as a freshly cleaned fish tank
- **Heavily Commented**: Every configuration file is thoroughly documented, perfect for learning and customization
- **Flexible Installation**: Place files wherever you want, just make sure they swim together!

## 🎣 Prerequisites

Make sure you have these essential tools installed:

- [bat](https://github.com/sharkdp/bat) - A cat clone with syntax highlighting
- [fish](https://fishshell.com/) - The friendly interactive shell
- [fzf](https://github.com/junegunn/fzf) - A command-line fuzzy finder
- [homebrew](https://brew.sh/) - The missing package manager for macOS
- [neovim](https://neovim.io/) - Hyperextensible Vim-based text editor
- [rip2](https://github.com/MilesCranmer/rip2): A safe and ergonomic alternative to `rm`
- [starship](https://starship.rs/) - The minimal, blazing-fast, and infinitely customizable prompt
- [vivid](https://github.com/sharkdp/vivid) - A themeable LS_COLORS generator
- [zoxide](https://github.com/ajeetdsouza/zoxide) - A smarter cd command

## 📁 File Structure

```
.
├── alias.fish          # Custom aliases for common commands
├── completions.fish    # Tab completion configurations
├── config.fish         # Main configuration file
├── env.fish            # Environment variables
├── homebrew.fish       # Homebrew-specific configurations
├── interactive.fish    # Interactive shell settings
└── path.fish           # PATH setup
```

## 🐋 Installation

### Quick Dive

1. Clone this repository:
   ```fish
   git clone https://github.com/HubertusWeber/FishTales.git
   ```

2. Copy all files to your fish config directory:
   ```fish
   cp FishTales/*.fish ~/.config/fish/
   ```

### Custom Location

If you prefer to keep the files elsewhere:

1. Clone to your preferred location
2. Make sure `config.fish` is sourced from your `~/.config/fish/config.fish`:
   ```fish
   source /path/to/FishTales/config.fish
   ```

## 📝 License

Everything in this repo is licensed under the BSD Zero-Clause License. What does that mean? It means you can do whatever you want with it!

Why? Because copyright is just a bad excuse for censorship, and your freedom of expression doesn’t vanish just because someone else wrote it first. So share it, remix it, fork it, or use it as wallpaper for all I care.

For the fine print (which isn’t very fine), see the full license in LICENSE.txt.
