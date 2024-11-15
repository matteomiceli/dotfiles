#!/bin/bash

# This script assumes you're using a system with the dnf package manager. If you're using a distro with a different package manager, be sure to replace the next two lines with the correct commands.

# Update repos and upgrade software packages
sudo dnf update -y

# install software packages
sudo dnf install -y flatpak zsh gnome-tweaks neovim alacritty golang node

# add flathub repos
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# install software packages from flatpak
flatpak install -y flathub org.gnome.Extensions com.spotify.Client com.discordapp.Discord

# os configuration
# mouse acceleration -- flat
gsettings set org.gnome.desktop.peripherals.mouse accel-profile flat

# install monaco nerdfont
sudo git clone https://github.com/Karmenzind/monaco-nerd-fonts && \
sudo cp -rf monaco-nerd-fonts/fonts/ /usr/share/fonts/monaco-nerd-fonts && \
sudo rm -rf monaco-nerd-fonts

# install oh my zsh -- https://github.com/ohmyzsh/ohmyzsh?tab=readme-ov-file#unattended-install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# install zsh autosuggestion plugin
sudo git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# copy dotfiles into home
cp ./dotfiles/{.zshrc,.tmux.conf,.vimrc} ~/

# copy config into ~/.config
cp -r ./dotfiles/{nvim,alacritty} ~/.config/

# clean up old .zshrc
rm ~/.zshrc.pre-oh-my-zsh
