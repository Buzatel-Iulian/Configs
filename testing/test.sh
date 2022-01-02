#!/bin/bash

title () {
	echo "-------------------------------------------"
	echo $1
	echo "-------------------------------------------"
}


title "Installing aplication"
sudo apt install ghex
title "Done"

while true
	do
		 read -r -p "Are You Sure? [Y/n] " input
		  
		   case $input in
		        [yY][eE][sS]|[yY])
################# if Y / Yes / y / yes ########################
			 echo -en "REBOOTING IN\n"
			 ./loadcount.sh 0 0 10
			 echo "now"
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

