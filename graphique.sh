source fonctions.sh 
graphique(){
    action=$(yad --width 500 --entry --title="Sujet 2 "  \
    --image="" \
    --button="gtk-ok:0" --button="gtk-close:1" \
    --text "Veuillez choisir l'action:" \
    --entry-text \
    "Details memoire" "detail processeur" "Sauvgarder les informations " "Help")

    ret=$?

[[ $ret -eq 1 ]] && exit 0

case $action in
    Details*)
clear
        lfree 

      graphique 
	 
        ;;
    Liste*)  
clear 
	ldmi  
	graphique 
	 
        ;;
    Sauvgarder*)  
clear
	save  
	graphique   
	 
	;; 
 
    Help*)  
	clear 
	Help  
	graphique 
	 
        ;; 
    *) exit 1 ;;  
esac
}
