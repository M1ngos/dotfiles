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

```bash
sudo dnf install sway alacritty tmux mako pipewire pipewire-pulseaudio
# Optional extras:
sudo dnf install waybar rofi slurp grim playerctl wl-clipboard

