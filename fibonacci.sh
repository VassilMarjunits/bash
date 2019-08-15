#!/bin/bash
#Fibonacci numbers and code references
#https://www.geeksforgeeks.org/program-for-nth-fibonacci-number/
#https://www.geeksforgeeks.org/fibonacci-series-bash/

read -p "Please insert the positive number?" pos
echo -n ""

# Fibonacci formula Fn = (Fn-1) + (Fn -2)
# First Numbers of seed values
a=0 
b=1  
    
for (( i=0; i<=$pos; i++ ))
do
    if [ "$i" -eq "$pos" ]; 
        then echo "$a"
        exit 0;
    fi
    fn=$((a + b)) 
    a=$b 
    b=$fn
done