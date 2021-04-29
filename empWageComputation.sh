#!/bin/bash -x

IS_PRESENT_FULL_TIME=1
IS_PRESENT_PART_TIME=2
WAGE_PER_HR=20

employeeCheck=$((Random%3))
case $employeeCheck in
    $IS_PREESENT_FULL_TIME)
empHrs=8;;
$IS_PRESENT_PART_TIME)
  empHrs=4;;
*)
empHrs=0;;
esac
salary=$(($empHrs * $WAGE_PER_HR))
done
