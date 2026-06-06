#!/usr/bin/env bash

# Copy the system nvim config to the repo

config_dir="$HOME/.config"

# install new config
cp -r "$config_dir/nvim/" "./dotfiles/nvim"
