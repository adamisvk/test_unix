#!/bin/bash

join -t , -j 1 <(cat social.txt | sort | sed s/$/,/) <(cat actor.txt | sort | sed s/$/,/) | cut -d , -f 1,2 >tmp
join -t , -j 1 <(cat beverly_hills.txt | sort | sed s/$/,/) tmp | cut -d , -f 1
rm tmp
