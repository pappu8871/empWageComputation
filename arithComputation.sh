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
