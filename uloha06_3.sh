#!/bin/bash

cut -d \: -f 1,4 /etc/group | awk -F ',' '{for(i=1;i<=NF;i++){printf $i}; printf ":"; print NF}' | cut -d ':' -f 1,3 | sort -k 2 -t ':' -rn | awk -F ':' '{if(max<=$2){max=$2;print $1}}'