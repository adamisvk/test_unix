#!/bin/bash

#VIEM ZE TOTO VYZERA DOST ZLE, ALE FUNGUJE TO :D 
join -t ^ -j 1 <(cut -d \; -f 1 countrycodes_en.csv | cut -d \" -f 2  | sort | sed s/$/^/) <(cut -d \; -f 4 kodyzemi_cz.csv | cut -d \" -f 2 | sort | sed s/$/^/) | cut -d ^ -f 1