#!/usr/local/bin/bash

line=`xinput --list-props 'DELL081C:00 044E:121F TouchPad' \
	| grep 'Tapping Enabled (' \
	| sed 's/[^0-9:]*//g'`
tap_enabled=${line::-2}
echo $tap_enabled
line=`xinput --list-props 'DELL081C:00 044E:121F TouchPad' \
	| grep 'Natural Scrolling Enabled (' \
	| sed 's/[^0-9:]*//g'`
scroll_enabled=${line::-2}
echo $scroll_enabled
line=`xinput --list-props 'DELL081C:00 044E:121F TouchPad' \
	| grep 'Accel Speed ('` 
echo 'line'$line
if [[ $line =~ \(([0-9]*)\) ]]; then
	accel_enabled=${BASH_REMATCH[1]}
fi

xinput --set-prop 'DELL081C:00 044E:121F TouchPad' $tap_enabled 1
xinput --set-prop 'DELL081C:00 044E:121F TouchPad' $scroll_enabled 1
xinput --set-prop 'DELL081C:00 044E:121F TouchPad' $accel_enabled 0.45
