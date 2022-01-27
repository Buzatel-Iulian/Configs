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
apt install nomacs -y
line
apt install xfce4-notifyd -y

title "Setting .config files"

cp rc.xml ~/.config/openbox/rc.xml
cp autostart ~/.config/openbox/autostart
cp tint2rc ~/.config/tint2/tint2rc
cp compton.conf ~/.config/compton.conf

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

