#!/bin/bash

title () {
	echo "-------------------------------------------"
	echo $1
	echo "-------------------------------------------"
}

line () {
	echo "-------------------------------------------"
	}

title "Installing usual debian applications"

apt install rofi -y
line
apt install caffeine -y
line
apt install nomacs -y      # image viewer
line
apt install featherpad -y  # simple file (.txt .md etc.) editor
line
apt install pcmanfm-qt -y  # file explorer
line
apt install qbittorrent -y # torrent client
line
apt install zsh -y
line
apt install qt5ct kvantum # theming software
line
apt install geany geany-plugins # IDE with its plugins
# go to dependency_notes.txt for theme installs
line
apt install brasero -y
line
apt install vim -y
line
apt install audacious -y
title "Setting up flatpak manager"
apt install flatpak -y
apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
title "Installing flatpaks"
wget https://dl.flathub.org/repo/appstream/com.usebottles.bottles.flatpakref
flatpak install com.usebottles.bottles.flatpakref -y


title "Finished"


