#!/bin/bash 
while true; do
	choice="$(zenity --width=750 --height=350 --list --column "" --title="choice" \
		"choice 1 display hostname" \
		"choice 2" \
		"choice 3")"
	case "${choice}" in
		1)
			`hostname`
			;;

	esac
done 
