# !/bin/bash

# Before you install
# Make sure yay is installed from the git repo

# Display server
sudo pacman -S --needed xorg-server xorg-apps xorg-xinit xorg-twm xorg-xclock xterm xorg-xmessage

# Essentials
sudo pacman -S --needed git make gcc ripgrep unzip wget fd openssh man fastfetch bat lsd
sudo pacman -S --needed xmonad xmonad-contrib xmobar discord alacritty thunar gvim neovim picom dunst sddm dmenu polkit-kde-agent flameshot feh ncmpcpp btop clipmenu rofi vi
sudo systemctl enable sddm.service
systemctl --user enable clipmenud.service
feh --bg-scale ~/dotfiles/wallpapers/katana.jpg

# Time
sudo timedatectl set-ntp true
sudo timedatectl set-timezone US/Eastern
sudo hwclock --systohc --utc

# Audio
sudo pacman -S --needed alsa-utils pipewire-alsa pipewire-pulse
systemctl --user enable wireplumber.service

# Lock
sudo pacman -S --needed xss-lock i3lock

# Fonts
sudo pacman -S --needed noto-fonts-cjk noto-fonts-emoji noto-fonts ttf-jetbrains-mono-nerd

# AUR (yay)
# Backlight
yay -S light brave-bin
