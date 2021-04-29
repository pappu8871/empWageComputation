#!/bin/bash -x

IS_PRESENT_FULL_TIME=1
IS_PRESENT_PART_TIME=2
EMP_RATE_PER_HR=20
NO_OF_WORKING_DAYS=5
MAX_WORKING_DAYS=20
#variable
totalWorkingHours=0
totalWorkingDays=0

function getWorkingHours(){
local empCheck=$1
localempHrs=0
case $employeeCheck in

    $IS_PREESENT_FULL_TIME ) empHrs=8;;

       $IS_PRESENT_PART_TIME ) empHrs=4;;
       *) empHrs=0;;
esac
  echo $empHrs
   }


while [ $totalWorkingDays -lt $NO_OF_WORKING_DAYS ] && [ $totalWorkingHours -lt>

do
employeeCheck=$(( Random%3 ))
totalWorkingDays=$(( $totalWorkingDays + 1 ))
empHrs="$( getWorkingHours $empCheck )"

  totalWorkingHours=$(( $totalWorkingHours + $empHrs ))

done
  salary=$(( $EMP_RATE_PER_HR * $totalWorkingHours  ))
