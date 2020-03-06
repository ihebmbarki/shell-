#!/bin/bash 
function menu () {

	choice=`zenity --width=750 --height=350 --list --title="Menu principal" --column "choix" --column = 1 "afficher caracteristiques" 2 "sauvegarder" 3 "help" 4 "quitter"`
	while true; do
	case $choice in	
		1)
			x=`zenity --width=750 --height=350 --list --title="Specs via" --column="choix" --column = 1 "free" 2 "dmidecode" 3 "quitter"`
		while true; do
			case $x in 
				1)
					y=`zenity --width=750 --height=350 --list --title="" --column="" --column = 1 "low/high memory stats" 2 "three digit unit memory" 3 "total memory" 4 "quitter"`
					while true; do
						case $y in 
							1) zenity --list --title"" --width=750 --height=350 --column="" `free -l` 
								;;
							2) zenity --list --title"" --width=750 --height=350 --column="" `free -h`
								;;
							3)zenity --list --title"" --width=750 --height=350 --column="" `free -t`
								;;
						esac
					done
					;;
				2) 
					y=`zenity --width=750 --height=350 --list --title="" --column="" --column = 1 "bios info" 2 "processor info" 3 "system info"`
					while true; do
						case $y in 
							1) zenity --list --title"" --width=750 --height=350 --column="" `sudo dmidecode --type bios` 
								;;
							2) zenity --list --title"" --width=750 --height=350 --column="" `sudo  dmidecode -t processor`
								;;
							3)zenity --list --title"" --width=750 --height=350 --column="" `sudo dmidecode -t system`
								;;
						esac
					done
					;;
				3)
	choice=`zenity --width=750 --height=350 --list --title="Menu principal" --column "choix" --column = 1 "afficher caracteristiques" 2 "sauvegarder" 3 "help" 4 "quitter"`
	while true; do
	case $choice in	
		1)
			x=`zenity --width=750 --height=350 --list --title="Specs via" --column="choix" --column = 1 "free" 2 "dmidecode"`
		while true; do
			case $x in 
				1)
					y=`zenity --width=750 --height=350 --list --title="" --column="" --column = 1 "low/high memory stats" 2 "three digit unit memory" 3 "total memory" 4 "quitter"`
					while true; do
						case $y in 
							1) zenity --list --title"" --width=750 --height=350 --column="" `free -l` 
								;;
							2) zenity --list --title"" --width=750 --height=350 --column="" `free -h`
								;;
							3)zenity --list --title"" --width=750 --height=350 --column="" `free -t`
								;;
						esac
					done
					;;
				2) 
					y=`zenity --width=750 --height=350 --list --title="" --column="" --column = 1 "bios info" 2 "processor info" 3 "system info"`
					while true; do
						case $y in 
							1) zenity --list --title"" --width=750 --height=350 --column="" `sudo dmidecode --type bios` 
								;;
							2) zenity --list --title"" --width=750 --height=350 --column="" `sudo  dmidecode -t processor`
								;;
							3)zenity --list --title"" --width=750 --height=350 --column="" `sudo dmidecode -t system`
								;;

							esac

					done 
					;;
			esac
		done ;;
esac 
done ;;
esac 
done;;

                         	2)
					echo $(sudo free -l) >> informations.txt
					;;

                      		3)
					a=`zenity --width=750 --height=350 --list --title="" --column="" --column = 1 "help free" 2 "dmidecode help"`
					while true; do
						case $a in 
							1) zenity --list --title"" --width=750 --height=350 --column="" `free -help` 
								;;
							2) zenity --list --title"" --width=750 --height=350 --column="" `dmidecode -help`
								;;
							esac

					done 
					;;
				4) exit
					;;
			esac
		done
		 
}

