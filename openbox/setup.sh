#!/bin/bash

title () {
	echo "-------------------------------------------"
	echo $1
	echo "-------------------------------------------"
}

line () {
	echo "-------------------------------------------"
	}

title "Installing packages"

apt install obconf -y
line
apt install openbox -y
line
apt install alsamixergui -y
line
apt install tint2 -y
line
apt install caffeine -y
line
apt install blueman -y
line
apt install compton -y
line
apt install arandr -y
line
apt install nitrogen -y
line
apt install stterm -y
line
apt-get install xscreensaver xscreensaver-data-extra xscreensaver-gl-extra -y
line
apt install nomacs -y      # image viewer
line
apt install xfce4-notifyd -y
line
apt install featherpad -y  # simple file (.txt .md etc.) editor
line
apt install pcmanfm-qt -y  # file explorer
line
apt install qbittorrent -y # torrent client
line
apt install xdotool -y
line
apt install qt5ct kvantum # theming software
line
apt install geany geany-plugins # IDE with its plugins
# go to dependency_notes.txt for theme installs
line

title "Setting .config files"

cp rc.xml ~/.config/openbox/rc.xml
cp autostart ~/.config/openbox/autostart
cp tint2rc ~/.config/tint2/tint2rc
cp compton.conf ~/.config/compton.conf
cp utils/disp_vol.sh /usr/bin/disp_vol.sh
cp utils/lower_vol /usr/bin/lower_vol.sh
cp utils/mute_vol /usr/bin/mute_vol.sh
cp utils/raise_vol /usr/bin/raise_vol.sh
echo "export QT_STYLE_OVERRIDE=kvantum" >> ~/.profile   # enable kvantum to modify system themes

title "DONE"

#echo "Restart computer now ?"
while true
	do
		 #read -r -p "Are You Sure? [Y/n] " input
		 read -r -p "Restart Computer now ? [Y/n]" input
		   case $input in
		        [yY][eE][sS]|[yY])
################# if Y / Yes / y / yes ########################
			 echo -en "REBOOTING IN\n"
			 ./utils/loadcount.sh 0 0 10
			 echo "reboot"
###############################################################
			  break
			   ;;
			        [nN][oO]|[nN])
################# if N / No / n / no ##########################
				 echo "Ok"
###############################################################
				  break
				          ;;
					       *)
					        echo "Invalid input..."
						 ;;
						  esac
						  done

