# IDG1100-Mid-term-assignment-1
Upload Assignment: Mid-term assignment 1: Write script to fetch and filter recor
Mid-term assignment

# What do I have to do?
In this assignment I have to write a script that creates a number of files, each file will contain facts about specific people. 
Script first part
-	Read list of people’s names and the facts about them. 
-	Some people are filtered away from the list. 
-	Manipulate the list of facts of each person.
-	Background and expected results:
	o	The input file will be file with a lot of information about (fictional) people.

# Input file format
-	First line contains a number of N that states how many names there are in the file.
-	The lines from 2 to line N+1 contains one name each.
-	Lines N+2 until the end of the file contains the facts about the people. 
-	Beware: Some names may be duplicated, handle that correctly.
-	Beware 2: Some names contain numbers or symbols like “!” or “@”.
	o	Remove numbers and symbols.
	o	Names can only contain letters and everything have to be lowercase. 

The expected result is a script that takes this file, reads names and creates several files named “facts-PERSON.txt” Each of these generated files must contain: 
-	Name on the first line.
-	All “fact lines” that contains the person’s name, one line per fact. 
-	On the last line, the number of facts about that person. 
Example: 
	john
	john has a farm
	Mari loves John
	In the last 10 years, John went to Sweden only once.
Setup
-	Download the file with the people’s names from https://folk.ntnu.no/gioeleba/idg1100/2022/ob1/people.txt

# Personalized sections
The structure of the script is the same for all students. However, the exact kind of manipulation done on the list of facts of each person depends on the first and last letters of your NTNU account name. 
For example, the account name “gioeleba”, the first letter is “G”, and the last letter is “A”.

# Filtering
-	Filtering part for first letter A-H
	o	You must remove from the list of people all people whose name is shorter than 5 characters.

-	Filtering part for first letter I-P
	o	You must remove from the list of people all people whose name is longer than 4 characters.

-	Filtering part for first letter Q-Z
	o	You must remove from the list of people all people whose name starts with a vowel (a, e, i, o, u).

# Manipulation
-	Manipulation part for last letter A-H
	o	Inside all facts about a specific person, you must replace all occurrences of that person name with “THIS FUNNY PERSON”. In addition, you must replace 		       all occurrences of numbers with your birthday. (Numbers, not digits.)

-	Manipulation part for last letter I-P
	o	Inside all facts about a specific person, if the name of the person start with a vowel, you must replace all occurrences of that person name with “THIS 		WISE PERSON”. Beware: only people names must be replaced, not other words.

-	Manipulation part for last letter Q-Z
	o	Inside all facts about a specific person, you must replace the first letter of that person name with “your last letter” and the last letter of that 	            person name with “your first letter”.   

# Hints
-	Remember to always use –E option with sed and grep. 
-	To store the output of a command into a command use VAR=$(prg arg1 arg2).
-	To do mathematical operations in Bash use $(( )). For example, to subtract 7 from the variable K and store the result in X, use X=$(($K - 7)).
-	Some sed invocations require the use of “back references” in the replacement field of the substitution commands. 
-	You cannot redirect the output of a pipeline into the file that you also use as input for a pipeline. If you need to do this, use a temporary file instead. 
-	If you have questions, ask in the forum. 
-	Deliverable.
-	Bash script, submitted via Blackboard. 

# Due date
-	Friday 14.10.2022 at 17:00.
-       Jonhsk
-       j-k
-       i-p filtering
