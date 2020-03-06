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

#set -o nounset                              # Treat unset variables as an error
args=("$@")
HOUR=0
MIN=0

change_wallpaper_mohave(){
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

change_wallpaper_catalina(){
	echo "The hour is $HOUR"
	if [ $HOUR -lt 3 ]	
	then 
		ID=0000
	elif [ $HOUR -lt 6 ]
	then
		ID=0300
	elif [ $HOUR -lt 9 ]
	then
		ID=0600
	elif [ $HOUR -lt 12 ]
	then
		ID=0900
	elif [ $HOUR -lt 15 ]
	then
		ID=1200
	elif [ $HOUR -lt 18 ]
	then 
		ID=1500
	elif [ $HOUR -lt 21 ]
	then
		ID=1800
	elif [ $HOUR -lt 24 ]
	then
		ID=2100
	fi
	nitrogen --set-zoom-fill ~/Pictures/DynWall/catalina_dynamic-$ID.jpg
	echo "The ID is $ID"
}

grab_time(){
	HOUR="$(date +"%H")"
	MIN="$(date +"%M")"
}

if [ ${args[0]} == "start" ]
then
	while :
	do
		grab_time
		echo "Weare $HOUR"
		if [ ${args[2]} == "mohave" ]
		then
			change_wallpaper_mohave
		elif [ ${args[2]} == "catalina" ]
		then
			change_wallpaper_catalina
		fi
		sleep ${args[1]}m
	done
fi
