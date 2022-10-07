#!/bin/bash

wget https://folk.ntnu.no/gioeleba/idg1100/2022/ob1/people.txt

tail -n29 people.txt > cleaned.txt

sed -i 's/[@,3,!,4]//g' cleaned.txt

sed -i 's/mari/Mari/g' cleaned.txt

sed -i 's/john9/John/g' cleaned.txt

sed -i 's/daniel/Daniel/g' cleaned.txt

sed -i 's/ole/Ole/g' cleaned.txt

sed -i 's/fREd/Fred/g' cleaned.txt

sed -i 's/pa77ul/Paul/g' cleaned.txt

sed -i 's/Andrea/Andrea/g' cleaned.txt

sed -i 's/KYLE/Kyle/g' cleaned.txt

sed -i 's/NicOle/Nicole/g' cleaned.txt

sed -i 's/three  ago/three years ago/g' cleaned.txt
