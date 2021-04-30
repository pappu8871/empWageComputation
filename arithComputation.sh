#!/bin/bash
echo "Please enter your first number: "
read a
echo "Enter second number: "
read b
echo "Enter third number: "
read c

 declear -A arrayName


p=$(( a + b * c ))
echo "p:$p"
s=$(( a * b + c ))
echo "s:$s"

r=$(( a % b + c ))
echo "r:$r"

s=$(( a * b + c ))
echo "s:$s"

arrayName=( $p $q $r $s )

echo ${arrayName[@]}

  
 
for ((i = 0; i<5; i++))
do
      
    for((j = 0; j<5-i-1; j++))
    do
      
        if [ ${arrayName[j]} -gt ${arrayName[$((j+1))]} ]
        then
            # swap
            temp=${arrayName[j]}
            arrayName[$j]=${arrayName[$((j+1))]}  
            arrayName[$((j+1))]=$temp
        fi
    done
done
  
echo "Array in sorted order :"
echo ${arrayName[@]}
