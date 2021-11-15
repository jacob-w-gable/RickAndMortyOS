#!/bin/bash

# wallpapers
mkdir /usr/share/wallpapers
mkdir /usr/share/wallpapers/rickandmorty
cp wallpapers -r /usr/share/wallpapers/rickandmorty/
gsettings set org.gnome.desktop.background picture-uri file:///usr/share/wallpapers/rickandmorty/wallpapers/rickmortywallpaper2.jpg

# Orchis theme
git clone https://github.com/jacob-w-gable/Orchis-theme
cd Orchis-theme
./install.sh --theme all
cp Orchis-GDM -r /usr/share/themes
	# GTK
gsettings set org.gnome.desktop.interface gtk-theme Orchis-purple-compact
	# Shell
gsettings set org.gnome.shell.extensions.user-theme name Orchis-compact
	# GDM
set-gdm-theme set Orchis-GDM
set-gdm-theme set -b /usr/share/wallpapers/rickandmorty/wallpapers/rickandmortylockscreen.png
cd ..

# Reversal icons
git clone https://github.com/yeyushengfan258/Reversal-icon-theme
cd Reversal-icon-theme
./install.sh -a
gsettings set org.gnome.desktop.interface icon-theme Reversal-purple
cd ..

# plymouth
cd plymouth
./install.sh rickvibe
cd ..

# conky
mkdir ~/.config/conky
cp conky.conf ~/.config/conky/

# grub
cp /etc/default/grub ~/grub.bak
sed -i '/GRUB_BACKGROUND/s/GRUB_BACKGROUND/#GRUB_BACKGROUND/' /etc/default/grub
sed -i '/GRUB_THEME/s/GRUB_THEME/#GRUB_THEME/' /etc/default/grub
sudo echo "GRUB_BACKGROUND=\"/usr/share/wallpapers/rickandmorty/wallpapers/rickandmorty.png\"" | sudo tee -a /etc/default/grub >/dev/null
update-grub
