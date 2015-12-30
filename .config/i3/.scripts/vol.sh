#!/bin/bash
amixer -c 1 get Master -M | awk -F'[]%[]' '/%/ {if ($7 == "off") { print "mute" } else { print $2"%" }}' | tail -n 1
