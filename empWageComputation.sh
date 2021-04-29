#!/bin/bash -x

IS_PRESENT_FULL_TIME=1
IS_PRESENT_PART_TIME=2
WAGE_PER_HR=20
MAX_WORKING_DAYS=30
#variable
totalWorkingHours=0
totalWorkingDays=0
while [ $totalWorkingDays != $MAX_WORKING_DAYS ]
do
employeeCheck=$((Random%3))
((totalWorkingDays++))
case $employeeCheck in
    $IS_PREESENT_FULL_TIME)
empHrs=8;;
$IS_PRESENT_PART_TIME)
empHrs=4;;
*)
empHrs=0;;
esac
  totalWorkingHours=$(($totalWorkingHours + $empHrs ))
    #salary=$(($empHrs * $WAGE_PER_HR))
done
  salary=$(( totalworkingHours * $WAGE_PER_HR ))
