if [ "$1" == "--help" ]; then
  printf "Usage: uloha01.sh [--typ|--help] [path_to_file]
    --typ	returns type of file on input
    --help	returns manual for script usage
  
Exit status:
    0	file found
    1	file not found
"
elif [ "$1" == "--typ" ]; then
  if [ -e "$2" ]; then
    if [ -d "$2" ]; then
      echo directory
    elif [ -L "$2" ]; then
      echo symbolic link
    elif [ -f "$2" ]; then
      echo regular file
    fi
  else
    echo neexistuje
    exit 1
  fi
fi