#!/bin/bash -x

IS_PRESENT_FULL_TIME=1
WAGE_PER_HR=20

#VARIABLE

empCheck=$((RANDAM%2))

#SELECTION
if [ $empCheck -eq $IS_PRESENT_FULL_TIME ]
then
empHrs=8

else
    empHrs=0
    fi
 Salary=$(( WAGE_PER_HR * empHrs ))


