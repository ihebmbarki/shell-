#/bin/bash
first=$(zenity --title="your first name" --text "what is your first name?" --entry --width="300" --height="250")
zenity --info --title="welcome" --text="Mr./Ms. $first" --width="300" --height="250"
zenityresult=$(
	zenity --list --title="Sys specs" --width="750" --height="350" --column="category" --column="specs" \
		"hostname" `hostname` "Manufacturer" `cat /sys/class/dmi/id/chassis_vendor | cut -d " " -f1` "Memory" `free -h`	

)

#if [[ $zenityresult == "Hostname" ]]; then
	
#fi
