#!/bin/bash


lfree()
{
    sudo free -l
}

ldmi()
{
    sudo dmidecode -t
}

menu()
{
    while [[ 1 ]]
	do
	echo 1 - Details memoire
	echo 2 - Details proceseur
    echo 3 - Sauvgarder les informations 
	echo 4 - Help
echo 6 -courbe
	echo 5 - Quitter

	echo "Donner votre choix"
	read a
	clear
		while [[ $a -le 0 || $a -ge 7 ]]
		do
			echo "Choix incorrecte"
			echo "donner votre choix"
			read a
		done
			case $a in
				1)	lfree ;;
				2)	ldmi ;;
                3)  save ;;
				4)	Help ;;
6) courbe ;;
                5)  exit
			esac 
	done
}

save()
{
    echo Sauvgarde en cours ....
    echo $(sudo free -l) >> informations.txt
    echo $(sudo dmidecode -m) >> informations.txt
}
courbe()
{
       
            vmstat -n 1 4 > statistique.txt
 gnuplot usage-plot.gp
chmod 777 output.jpg
eog output.jpg
      
}

Help()
{
    echo -lfree : Details memoire
    echo -ldmi : Details processeur
    echo -m : afficher un Menu
    echo -s ou --save : Enregistrer les informations pertinant dans un fichier
    echo -h ou -help : afficher ce message
}
