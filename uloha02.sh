if [ "$1" == "--help" ]; then
  printf "Usage: uloha02.sh [OPTION] [args]
    --normal	vypise vsetky parametre na novy riadok
    --reverse	vypise vsetky parametre na novy riadok v opacnom poradi
    --subst	vymeni kazdy vyskyt druheho argumentu za prvy
    --len	vypise pocet znakov kazdeho parametra
  
Exit status:
    0	OK
"

elif [ "$1" == "--normal" ]; then
    for i in "$@"; do
	echo "$i"
    done

elif [ "$1" == "--reverse" ]; then
    for i in "$@"; do
	echo $i >> tmp
    done
    cat tmp |sort -r
    rm tmp
    
elif [ "$1" == "--subst" ]; then
    for i in "${@:4}"; do
	echo "${i//$2/$3}"
    done

elif [ "$1" == "--len" ]; then
    for i in "$@"; do
	printf "${#i} "
    done
    echo
fi