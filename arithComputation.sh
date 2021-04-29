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



q=$(( c + a / b ))
echo "q:$q"



t=$(( a % b + c ))
echo "t:$t"
