#!/bin/bash

title () {
	echo "-------------------------------------------"
	echo $1
	echo "-------------------------------------------"
}

line () {
	echo "-------------------------------------------"
	}

title "Backing up .config files"

cp ~/.config/openbox/rc.xml rc.xml
cp ~/.config/openbox/autostart autostart
cp ~/.config/tint2/tint2rc tint2rc
cp ~/.config/compton.conf compton.conf

title "DONE"

echo "!!! AND DON'T FORGET TO COMMIT AND PUSH TO REMOTE !!!"
