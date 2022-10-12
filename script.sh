#!/bin/bash

#Download file and create people.txt
wget https://folk.ntnu.no/gioeleba/idg1100/2022/ob1/people.txt

#Remove 8 from file and move all content to a new file where it's cleaned
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

#Take all names and facts that are about a person and create a file from that 

grep Mari cleaned.txt > facts-Mari.txt

grep John cleaned.txt > facts-John.txt

grep Daniel cleaned.txt > facts-Daniel.txt

grep Ole cleaned.txt > facts-Ole.txt

grep Fred cleaned.txt > facts-Fred.txt

grep Paul cleaned.txt > facts-Paul.txt

grep Andrea cleaned.txt > facts-Andrea.txt

grep Kyle cleaned.txt > facts-Kyle.txt

#Add linecount in the end of every facts file

wc -l facts-Mari.txt >> facts-Mari.txt

wc -l facts-John.txt >> facts-John.txt

wc -l facts-Daniel.txt >> facts-Daniel.txt

wc -l facts-Ole.txt >> facts-Ole.txt

wc -l facts-Fred.txt >> facts-Fred.txt

wc -l facts-Paul.txt >> facts-Paul.txt

wc -l facts-Andrea.txt >> facts-Andrea.txt

wc -l facts-Kyle.txt >> facts-Kyle.txt

#Delete files we don't need anymore
rm people.txt
rm cleaned.txt
