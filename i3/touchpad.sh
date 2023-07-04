#!/bin/bash

line=`xinput --list-props 'ELAN1201:00 04F3:3098 Touchpad' \
	| grep 'Tapping Enabled (' \
	| sed 's/[^0-9:]*//g'`
tap_enabled=${line::-2}
echo $tap_enabled
line=`xinput --list-props 'ELAN1201:00 04F3:3098 Touchpad' \
	| grep 'Natural Scrolling Enabled (' \
	| sed 's/[^0-9:]*//g'`
scroll_enabled=${line::-2}
echo $scroll_enabled
line=`xinput --list-props 'ELAN1201:00 04F3:3098 Touchpad' \
	| grep 'Accel Speed ('` 
echo 'line'$line
if [[ $line =~ \(([0-9]*)\) ]]; then
	accel_enabled=${BASH_REMATCH[1]}
fi

xinput --set-prop 'ELAN1201:00 04F3:3098 Touchpad' $tap_enabled 1
xinput --set-prop 'ELAN1201:00 04F3:3098 Touchpad' $scroll_enabled 1
xinput --set-prop 'ELAN1201:00 04F3:3098 Touchpad' $accel_enabled 0.45
