#!/bin/bash
function test() { 
	x=`zenity --width=750 --height=350 --list --title="MENU" --column="choose" -#-column= 1 "La commande free"`
while true; do
	choice=`zenity --width=750 --height=350 --list --title="MENU" --column="choose" --column= 1 "Hostname" 2 "Manufacturer" 3 "Memory" 4 "kernel drivers" 5 "Help"`
	case $choice in
		1)
			zenity --list --title"" --width=350 --height=350 --column="HOSTNAME" `hostname`
			;;
		2)
			zenity --list --title"" --width=350 --height=350 --column="MANUFACTURER" `cat /sys/class/dmi/id/chassis_vendor`
			;;
		3)

                        zenity --list --title"" --width=350 --height=350 --column="MEMOIRE" `free -h`
			;;
		4)
			zenity --list --title"" --width=600 --height=600 --column"kernel drivers" `lspci -k`
			;;
		5)
			zenity --list --title"" --width=350 --height=350 --column="HELP" `help`
			;;
	esac
done 
}

