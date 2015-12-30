#!/bin/bash
pidof spotify >/dev/null
if [[ $? -eq 0 ]] ; then
	echo "spotify: "`dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get string:'org.mpris.MediaPlayer2.Player' string:'Metadata'|egrep -A 2 "artist"|egrep -v "artist"|egrep -v "array"|cut -b 27-|cut -d '"' -f 1|egrep -v ^$` "-" `dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get string:'org.mpris.MediaPlayer2.Player' string:'Metadata'|egrep -A 1 "title"|egrep -v "title"|cut -b 44-|cut -d '"' -f 1|egrep -v ^$`
fi


pidof mpd >/dev/null

if [[ $? -eq 0 ]] ; then
	if mpc status | grep playing >/dev/null      # If mpd is playing
	then  
		echo "mpd: "`mpc current`
	fi
fi
