#!/bin/bash
if [ $1 == "e" ] ; then
    xrandr --output eDP1 --auto
    xrandr --output HDMI1 --auto --left-of eDP1
elif [ $1 == "d" ] ; then
    xrandr --output eDP1 --auto
    xrandr --output HDMI1 --auto --right-of eDP1
elif [ $1 == "o" ] ; then
    xrandr --output HDMI1 --off
    xrandr --output eDP1 --auto
elif [ $1 == "r" ] ; then
    xrandr --output HDMI --off
    xrandr --output eDP1 --on
fi

/home/bruno/.fehbg
