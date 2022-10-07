#!/bin/bash

wget  https://folk.ntnu.no/gioeleba/idg1100/2022/ob1/people.txt

sleep 1

tail -n29 $people


#head -n8 temp.ch | sed -e "s/[0-9@//; s/[A-Z]/\L&/g;" | sort | uniq -u > .sorted.ch  

