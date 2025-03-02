# Dotfiles

Welcome to my dotfiles repository! This collection houses my customized configurations for an efficient, terminal-centric workflow. The core tools in this setup are:

- **[Neovim (NvChad)](https://nvchad.com/)** - A fast, modern text editor with a pre-configured IDE experience.
- **[fish shell (Fisher)](https://fishshell.com/)** - A smart, user-friendly shell with Fisher for plugin management.
- **[tmux](https://github.com/tmux/tmux/wiki)** - A terminal multiplexer for managing multiple sessions.
- **[Wezterm](https://wezfurlong.org/wezterm/)** - A GPU-accelerated, highly customizable terminal emulator.

Repository: [https://github.com/baonguyen130402/dotfiles](https://github.com/baonguyen130402/dotfiles).

---

## Why This Setup?

This configuration balances performance, aesthetics, and productivity:
- **Neovim + NvChad**: Lightweight editor with LSP and a sleek UI.
- **fish + Fisher**: Intuitive shell with autosuggestions and plugin support.
- **tmux**: Efficient session and pane management.
- **Wezterm**: Smooth, modern terminal with extensive customization.

---

## Components

### Neovim with NvChad
- **Purpose**: Primary editor for coding and configuration.
- **Configuration**: Based on NvChad at `~/.config/nvim`.
- **Features**:
  - Modern UI with file explorer and statusline.
  - LSP, autocompletion, and syntax highlighting.
  - Customizable via `~/.config/nvim/lua/custom/`.

### fish Shell with Fisher
- **Purpose**: Everyday shell for commands and scripting.
- **Configuration**: Located at `~/.config/fish/`, plugins via Fisher.
- **Features**:
  - Autosuggestions and history navigation.
  - Readable scripting syntax.
  - Plugins like `z` and `fzf`.

### tmux
- **Purpose**: Terminal multiplexing for multitasking.
- **Configuration**: Stored in `~/.tmux.conf`.
- **Features**:
  - Pane splitting and session persistence.
  - Custom keybindings (e.g., `Ctrl-a` prefix).

### Wezterm
- **Purpose**: Terminal emulator for a polished experience.
- **Configuration**: Located at `~/.wezterm.lua`.
- **Features**:
  - GPU acceleration for smooth rendering.
  - Custom fonts, colors, and keybindings.
  - Cross-platform support.

---

## Installation

To use these dotfiles, follow these steps:

1. **Install Prerequisites**:
   - Neovim: `sudo apt install neovim`.
   - fish: `sudo apt install fish`, set default with `chsh -s /usr/bin/fish`.
   - tmux: `sudo apt install tmux`.
   - Wezterm: Download from [Wezterm releases](https://github.com/wez/wezterm/releases).

2. **Clone the Repository**:
   ```bash
   git clone https://github.com/baonguyen130402/dotfiles.git ~/dotfiles
   cd ~/dotfiles
   ```

3. **Set Up NvChad**:
   ```bash
   git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
   nvim
   ```
   - Run `:MasonInstallAll` to install LSPs.

4. **Install Fisher for fish**:
   ```fish
   curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
   ```

5. **Link Dotfiles**:
   ```bash
   ln -s ~/dotfiles/.config/nvim ~/.config/nvim
   ln -s ~/dotfiles/.config/fish ~/.config/fish
   ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
   ln -s ~/dotfiles/.wezterm.lua ~/.wezterm.lua
   ```

6. **Apply Changes**:
   - Restart your shell or run `fish`.
   - Reload tmux: `tmux source ~/.tmux.conf`.

---

## Usage Example

1. Launch Wezterm.
2. Start tmux: `tmux new -s dev`.
3. Split panes: `Ctrl-a %` (vertical) or `Ctrl-a "` (horizontal).
4. Open Neovim: `nvim .`.
5. Use fish with Fisher plugins for commands.

---

## Customization

- **Neovim**: Edit `~/.config/nvim/lua/custom/`.
- **fish**: Add to `~/.config/fish/config.fish`; use `fisher install <plugin>`.
- **tmux**: Modify `~/.tmux.conf`.
- **Wezterm**: Tweak `~/.wezterm.lua` (e.g., fonts, colors).

---

## Contributing

Feel free to open issues or pull requests with suggestions or improvements!

---

## License

This project is licensed under the [MIT License](LICENSE).

---

Thanks for exploring my dotfiles! I hope they inspire your own setup.
