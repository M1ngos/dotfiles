# My Dotfiles

Minimal keyboard-focused development environment for **Wayland (Sway)**.

## Overview

This setup is designed for a **keyboard-driven workflow**, focusing on terminal and container-based development. No full desktop environment required—just Sway, terminal, multiplexer, and basic utilities.

## Core Components

- **Sway** – Wayland tiling window manager
- **Alacritty** – GPU-accelerated terminal
- **tmux** – Terminal multiplexer
- **Mako** – Notification daemon
- **PipeWire + pipewire-pulseaudio** – Audio backend

## Optional Utilities

- **Waybar** – Status bar
- **Rofi** – Application launcher
- **Slurp + Grim** – Screenshots
- **Playerctl** – Media key control
- **wl-clipboard** – Clipboard utilities

## Installation

These dotfiles are managed using [GNU Stow](https://www.gnu.org/software/stow/).

1.  **Clone the repository:**
    ```bash
    git clone <your-repo-url> ~/.dotfiles
    cd ~/.dotfiles
    ```

2.  **Run the installation script:**
    ```bash
    ./install.sh
    ```

The script will install all dependencies and use `stow` to symlink the configuration files into place.

