# Fedora Wayland Setup
This is a setup script for a fresh installation of Fedora on Wayland. This script automates the installation of software and the configuration of the operating system to my liking. 

## Software Installation
```
sudo dnf update
```
#### dnf
- focuswriter
- flatpak
- deluge
- chromium
- htop
- neofetch
- zsh
- nodejs
- gnome-tweaks
- vim-enhanced
- php
- sway
#### flatpak
- setup flathub repos
```bash
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```
- postman
- extensions
- spotify
- discord
example:
```bash
flatpak install flathub com.spotify.Client com.discordapp.Discord org.gnome.Extensions
```
## OS Settings
1. Set mouse acceleration profile to flat
```
gsettings  set  org.gnome.desktop.peripherals.mouse  accel-profile  flat
```
2. Enable fractional scaling *may only appear after restart*
```
gsettings set org.gnome.mutter experimental-features "['scale-monitor-framebuffer']"
```

3. Set zsh as default shell
```
chsh -s $(which zsh)
```

4. Set login screen to main monitor *must be done after display settings*
```
sudo cp ~/.config/monitors.xml ~gdm/.config/monitors.xml
sudo chown gdm:gdm ~gdm/.config/monitors.xml
```

5. Run and enable ssh server
```
sudo systemctl start sshd
sudo systemctl enable sshd
```

6. Terminal Setup
Settings for terminal configuration.
- Install Oh my zsh
```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

- Install zsh autocomplete
```
sudo git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
7. Copy dotfiles into /home
