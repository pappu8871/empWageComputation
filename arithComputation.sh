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
q=$(( c + a / b ))
echo "q:$q"

arrayName=( $p $q $r $s )

echo ${arrayName[@]}

for (( i = 0; i <4 ; i++ ))
do
for (( j =1; j <4; j++ ))
do
if [ ${arrayName[i]} -lt ${arrayName[j+1]} ]; then
temp=${arrayName[i]}
arrayName[$i]=${arrayName[j+1]}
arrayName[$j+1]=$temp
fi
done
done

echo "Sorted Computation for descending order"

for (( i=0; i <4; i++ ))
do
echo ${arrayName[$i]}
done
