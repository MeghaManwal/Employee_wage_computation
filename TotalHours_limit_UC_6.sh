#!/bin/bash

fulltime=1
parttime=2
salaryperhr=100
emphr=0

salary=0
for((day=0;day<20;day++))
do
 for((hours=0;hours<100;hours++))
 do
 randomNumber=$((RANDOM%3))
   if [ $randomNumber -eq $fulltime ]
   then
     emphr=8
   elif [ $randomNumber -eq $parttime ]
   then
     emphr=4
   else
     emphr=0
   fi
  salary=$(($salary+($emphr*$salaryperhr)))
 done
done
echo $salary
