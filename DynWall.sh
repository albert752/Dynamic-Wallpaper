#!/bin/bash - 
#===============================================================================
#
#          FILE: DynWall.sh
# 
#         USAGE: ./DynWall.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 14/03/19 10:19
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
args=("$@")
HOUR=0
MIN=0

change_wallpaper(){
	if [ $HOUR -lt 3 ]
	then 
		HOUR=$(echo "$HOUR+24" | bc)
	fi
	if [ $MIN -ge 30 ]
	then 
		HOUR=$(echo "$HOUR+0.5" | bc)
	fi
	ID=$(echo "($HOUR-1.5)/1.5" | bc)
	nitrogen --set-zoom-fill ~/Imatges/DynWall/mojave_dynamic_$ID.jpeg
}

grab_time(){
	if [ ${args[0]} == "debug" ]
	then
		echo "Debugging mode"
		HOUR=${args[1]}
		MIN=${args[2]}
	else
		HOUR="$(date +"%H")"
		MIN="$(date +"%M")"
	fi
}

while :
do
	grab_time
	change_wallpaper
	sleep 1.5h
done
