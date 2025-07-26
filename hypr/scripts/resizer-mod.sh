#!/bin/bash

direction=$1
amount=$2
keycode=$3 # e.g. 43 for 'H'

# Start listening to keyboard events from wev
wev keyboard | while read -r line; do
	# Detect key press
	if echo "$line" | grep -q "\"code\": $keycode" && echo "$line" | grep -q '"state": "pressed"'; then
		# Resize repeatedly while key is held
		while true; do
			hyprctl dispatch resizeactive "$direction" "$amount"
			sleep 0.05

			# Look ahead to detect key release
			read -t 0.01 -r nextline || continue
			if echo "$nextline" | grep -q "\"code\": $keycode" && echo "$nextline" | grep -q '"state": "released"'; then
				break
			fi
		done
	fi
done
