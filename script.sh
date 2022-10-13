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

awk 'BEGIN{c1=-1} //{c1++} END{print "Number of lines: ",c1}' facts-Mari.txt >> facts-Mari.txt

awk 'BEGIN{c1=-1} //{c1++} END{print "Number of lines: ",c1}' facts-John.txt >> facts-John.txt

awk 'BEGIN{c1=-1} //{c1++} END{print "Number of lines: ",c1}' facts-Daniel.txt >> facts-Daniel.txt

awk 'BEGIN{c1=-1} //{c1++} END{print "Number of lines: ",c1}' facts-Ole.txt >> facts-Ole.txt

awk 'BEGIN{c1=-1} //{c1++} END{print "Number of lines: ",c1}' facts-Fred.txt >> facts-Fred.txt

awk 'BEGIN{c1=-1} //{c1++} END{print "Number of lines: ",c1}' facts-Paul.txt >> facts-Paul.txt

awk 'BEGIN{c1=-1} //{c1++} END{print "Number of lines: ",c1}' facts-Andrea.txt >> facts-Andrea.txt

awk 'BEGIN{c1=-1} //{c1++} END{print "Number of lines: ",c1}' facts-Kyle.txt >> facts-Kyle.txt

#Delete files we don't need anymore
rm people.txt


#Names less than 5
#grep -v cleaned.txt > filename2; mv filename2 cleaned.txt
head -n8 cleaned.txt > morethanfive.txt
grep 
sed -n '/^.\{5\}/!p'  morethanfive.txt >> lessthanfive.txt
#sed '/^[[:space:]]*$/d' morethanfive.txt >> morecleaned.txt
sed -i 's/Andrea/facts-Andrea.txt/g' lessthanfive.txt >> morecleaned.txt
sed -i 's/Daniel/facts-Daniel.txt/g' lessthanfive.txt >> morecleaned.txt
sed -i 's/Fred/facts-Fred.txt/g' lessthanfive.txt >> morecleaned.txt
sed -i 's/John/facts-John.txt/g' lessthanfive.txt >> morecleaned.txt
sed -i 's/Kyle/facts-Kyle.txt/g' lessthanfive.txt >> morecleaned.txt
sed -i 's/Mari/facts-Mari.txt/g' lessthanfive.txt >> morecleaned.txt
sed -i 's/Ole/facts-Ole.txt/g' lessthanfive.txt >> morecleaned.txt
sed -i 's/Paul/facts-Paul.txt/g' lessthanfive.txt >> morecleaned.txt

$ cat morecleaned.txt 
#!/bin/bash

TO_BE_DEL="$1"
IFS=""

while read -r file ; do
    rm -r "$file"
done < "$TO_BE_DEL"

#https://www.baeldung.com/linux/delete-files-listed-in-file