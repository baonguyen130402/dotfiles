# Dotfiles

## Overview

This repository contains my dotfiles for a productive terminal setup using:

- **tmux**: A terminal multiplexer for managing multiple sessions efficiently.
- **Neovim (nvim)**: A modern, extensible text editor.
- **Fish Shell**: A user-friendly, interactive shell.

## Installation

### Prerequisites

Ensure you have the following installed:

- **tmux** (≥ 3.0)
- **Neovim** (≥ 0.8)
- **fish** (≥ 3.5)
- **git** (for cloning the repository)

### Setup Instructions

1. Clone the repository:

   ```sh
   git clone https://github.com/baonguyen130402/dotfiles.git ~/.dotfiles
   cd ~/.dotfiles
   ```

2. Run the setup script:

   ```sh
   ./install.sh
   ```

   This will create symbolic links in your home directory and apply the configuration.

### Manual Installation

If you prefer, manually create symlinks:

```sh
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/nvim ~/.config/nvim
ln -s ~/.dotfiles/fish ~/.config/fish
```

## Features

### tmux

- Custom keybindings for session, window, and pane management.
- Status bar customization.
- Plugin support via `tpm` (Tmux Plugin Manager).

### Neovim

- Custom key mappings for efficiency.
- Plugin manager (lazy.nvim or packer.nvim).
- LSP, auto-completion, and syntax highlighting.

### Fish Shell

- Powerline-style prompt.
- Autocompletions and syntax highlighting.
- Aliases for common commands.

## Customization

Modify configuration files in `~/.dotfiles/` and reload them:

- **tmux**: `tmux source ~/.tmux.conf`
- **Neovim**: Restart Neovim.
- **Fish**: `source ~/.config/fish/config.fish`

## Updating

To pull the latest changes:

```sh
cd ~/.dotfiles
git pull
./install.sh
```

## License

This configuration is open-source and available under the MIT License.

---

Feel free to customize based on your exact setup! 🚀
