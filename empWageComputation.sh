#!/bin/bash -x
echo "Welcome to Employee
Wage Computation"
ispresent=1;
randomcheck=$((RANDOM%2));

if [ $ispresent -eq $randomcheck ];
then
	echo "Employee is present" ;
else
	echo "Employee is absent" ;
fi

if [ $ispresent -eq $randomcheck ];
then 
	emprateperhr=20;
	emphrs=8;
	salary=$((emphrs*$emprateperhr));
else 
	salary=0;
fi
