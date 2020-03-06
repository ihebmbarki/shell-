#!/bin/bash

source fonctions.sh 
source graphique.sh
if [[ $# -eq 0 ]]; then
lfree && ldmi
else

    if [[ $1 = '-lfree' ]]; then
			lfree
		elif [[ $1 = '-ldmi' ]]; then
			ldmi
		elif [[ $1 = '-m' ]]; then
			menu
        elif [[ $1 = '-s' || $1 = '--save' ]]; then
			save
		elif [[ $1 = '-h' || $1 = '-help' ]]; then
			Help 
	elif [[ $1 = '-g' || $1 = '-G' ]]; then
			graphique
		else
			echo Commande Erronée
		fi

fi
