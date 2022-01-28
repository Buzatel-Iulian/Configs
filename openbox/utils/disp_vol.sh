#!/bin/bash

org_volume=`amixer -D pulse get Master|tail -n1|sed -E 's/.*\[([0-9]+)\%\].*/\1/'`
i=1

volume=$((org_volume / 5))
volume_bar=""

while (( $i <= $volume ));
do
	volume_bar="${volume_bar}█"
	i=$i+1
done
i=$((20-$volume))
while (( $i > 0 ));
do
	volume_bar="${volume_bar}░"

	i=$i-1
done

if (( $org_volume >= 10 ));
then
notify-send "________Volume : ${org_volume}%________" "║${volume_bar}║" -t 50
else
notify-send "_________Volume : ${org_volume}%________" "║${volume_bar}║" -t 50
fi

