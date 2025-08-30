#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

# --- Helper Functions ---
log() {
  echo "› $1"
}

# --- Main Script ---
log "Starting dotfiles installation..."

# Install dependencies, including stow.
log "Installing dependencies..."
if ! command -v dnf &> /dev/null; then
  echo "  Error: dnf not found. Please install dependencies from README.md manually." >&2
  exit 1
fi
sudo dnf install -y stow sway alacritty tmux mako pipewire pipewire-pulseaudio waybar rofi slurp grim playerctl wl-clipboard

# Stow the packages.
log "Stowing dotfiles..."
# Change into the stow directory and run stow from there.
# The * will expand to all the package directories inside.
(cd stow && stow -v -t "$HOME" *)

# Make scripts executable.
log "Setting execute permissions..."
chmod +x "$HOME/.config/sway/screenshot.sh"
chmod +x "$HOME/.config/waybar/cava.sh"

log "Installation complete!"
log "Your dotfiles are now managed by stow."
log "To add new dotfiles, add them to the appropriate package in the 'stow' directory and run 'stow <package_name>'."
log "To unstow a package, run 'stow -D <package_name>'."