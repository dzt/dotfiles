#!/bin/bash

if [ $1 == "next" ] ; then
	playerctl next
	mpc next
elif [ $1 == "previous" ] ; then
	playerctl previous
	mpc prev
elif [ $1 == "toggle" ] ; then
	playerctl play-pause
	mpc toggle
fi

