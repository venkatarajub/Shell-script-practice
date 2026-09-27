*Variables in Shell script
In shell scripting, variables store data that you can use and manipulate throughout your script.
#Passing variables
1. Inside the script
2. Passed through aurmuments
3. Passed at runtime

1. Inside the script
#!/bin/bash
NAME1=Ramesh
NAME2=Suresh
echo "$NAME1: Hi $NAME2 How are you?"
echo "$NAME2: Hi $NAME1, i am fine"
echo "$NAME1: what are you doing?"
echo "$NAME2: I am learning DevOps"

** 2. Passed through aurmuments
#!/bin/bash
NAME1=$1
NAME2=$2

echo "$NAME1: Hi $NAME2 How are you?"
echo "$NAME2: Hi $NAME1, i am fine"
echo "$NAME1: what are you doing?"
echo "$NAME2: I am learning DevOps"

Variables passed as aruguments
sh file-name venkat raju