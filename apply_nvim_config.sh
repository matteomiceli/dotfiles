#!/usr/bin/env bash

# Copy the repo nvim config to the system

config_dir="$HOME/.config"

if [ -d "$config_dir/nvim_backup" ]; then
  rm -r "$config_dir/nvim_backup"
fi

# backup existing config
mv "$config_dir/nvim" "$config_dir/nvim_backup"

# install new config
cp -r "./dotfiles/nvim" "$config_dir/nvim/"
