#!/bin/bash

sudo pacman -S git neovim xorg xorg-xinit i3-wm i3blocks dmenu j4-dmenu-desktop alacritty fish feh chromium thunar thunar-volman gvfs ttf-ibm-plex gcc acpi tlp bluez bluez-utils pulseaudio pulseaudio-bluetooth

git clone https://github.com/lucasrluz/wallpaper.git

mv .config/ ~/

cp /etc/X11/xinit/xinitrc ~/.xinitrc

sudo systemctl enable fstrim.timer
sudo systemctl start fstrim.timer

sudo systemctl enable tlp.service
sudo systemctl start tlp.service
sudo systemctl mask systemd-rfkill.service systemd-rfkill.socket

sudo cp ./etc/tlp.conf /etc/tlp.conf

sudo tlp start

sudo cp ./etc/30-touchpad.conf /etc/X11/xorg.conf.d/30-touchpad.conf

git config --global user.email "lucasrluz.23@gmail.com"
git config --global user.name "Lucas Ribeiro da Luz"

sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

yay -S flat-remix-gtk flat-remix

echo "Adicionar i3 ao .xinitrc"
