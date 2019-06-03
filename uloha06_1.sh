#!/bin/bash

join -t , -j 1 <(cat social.txt | sort | sed s/$/,/) <(cat actor.txt | sort | sed s/$/,/) | cut -d , -f 1
