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

dnf install git -y
line
#dnf install rofi -y
line
dnf install caffeine -y
line
dnf install conky -y
#dnf install nomacs -y      # image viewer
line
#dnf install featherpad -y  # simple file (.txt .md etc.) editor
line
#dnf install pcmanfm-qt -y  # file explorer
line
dnf install qbittorrent -y # torrent client
line
dnf install zsh -y
line
#dnf install qt5ct kvantum # theming software
#line
#dnf install geany geany-plugins # IDE with its plugins
# go to dependency_notes.txt for theme installs
#line
#dnf install brasero -y
#line
#dnf install vim -y
dnf install nvim -y
line
dnf install audacious -y
line
dnf install virtualbox -y
line
dnf install dosbox -y
line
dnf install krita -y
line
dnf install gimp -y
line
dnf install steam -y
line
dnf install octave -y
line
dnf install vlc -y
line
dnf install gnome-chess -y
line


title "Setting up flatpak manager"
dnf install flatpak -y
dnf install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

title "Installing flatpaks"

wget https://dl.flathub.org/repo/appstream/com.usebottles.bottles.flatpakref
flatpak install com.usebottles.bottles.flatpakref -y
line

wget https://dl.flathub.org/repo/appstream/nz.mega.MEGAsync.flatpakref
flatpak install nz.mega.MEGAsync.flatpakref -y
line

#wget https://dl.flathub.org/repo/appstream/com.visualstudio.code.flatpakref
#flatpak install com.visualstudio.code.flatpakref -y
#line

flatpak install flathub com.github.unrud.VideoDownloader -y
line

flatpak install flathub com.github.finefindus.eyedropper -y
line

flatpak install flathub net.runelite.RuneLite -y
line

flatpak install flathub com.obsproject.Studio -y
line

flatpak install flathub org.gnome.Weather -y
line

flatpak install flathub org.gnome.Cheese -y
line

flatpak install flathub com.discordapp.Discord -y
line

#flatpak install flathub org.chromium.Chromium -y

#title "Setting up Vimrc"
#cp vimrc ~/.vimrc

title "Setting up ZSH"
#orgd = pwd
mkdir ~/.myPlugins
cp zshrc ~/.zshrc
cd ~/.myPlugins
git clone https://github.com/agkozak/agkozak-zsh-prompt.git

title "Setting up Brave"

dnf install dnf-plugins-core

dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo

rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc

dnf install brave-browser -y

title "Finished"


