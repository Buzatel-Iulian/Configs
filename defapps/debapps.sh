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

apt install git -y
line
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
#apt install qt5ct kvantum # theming software
#line
#apt install geany geany-plugins # IDE with its plugins
# go to dependency_notes.txt for theme installs
#line
apt install brasero -y
line
apt install vim -y
line
apt install audacious -y
line
apt install virtualbox -y
line
apt install dosbox -y
line
apt install krita -y
line
apt install gimp -y
line
apt install steam -y
line
apt install octave -y
line
apt install vlc -y

title "Setting up flatpak manager"
apt install flatpak -y
apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

title "Installing flatpaks"

wget https://dl.flathub.org/repo/appstream/com.usebottles.bottles.flatpakref
flatpak install com.usebottles.bottles.flatpakref -y
line

wget https://dl.flathub.org/repo/appstream/nz.mega.MEGAsync.flatpakref
flatpak install nz.mega.MEGAsync.flatpakref -y
line

wget https://dl.flathub.org/repo/appstream/com.visualstudio.code.flatpakref
flatpak install com.visualstudio.code.flatpakref -y
line

flatpak install flathub net.runelite.RuneLite -y
line

flatpak install flathub org.chromium.Chromium -y

title "Setting up Vimrc"
cp vimrc ~/.vimrc

title "Setting up ZSH"
#orgd = pwd
mkdir ~/.myPlugins
cp zshrc ~/.zshrc
cd ~/.myPlugins
git clone https://github.com/agkozak/agkozak-zsh-prompt.git

title "Finished"


