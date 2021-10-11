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
<<<<<<< HEAD
=======
isparttime=1;
isfulltime=2;
emprateperhr=20;
randomcheck=$((RANDOM%3));
if [ $isfulltime -eq $randomcheck ];
then
	emphrs=8;
elif [ $isparttime -eq $randomcheck ];
then
	emphrs=4;
else
	emphrs=0;
fi
#salary=$(($emphrs*$emprateperhr));
#isparttime=1;
#isfulltime=2;
#emprateperhr=20;
empcheck=$((RANDOM%3));
case $empcheck in
        $isfulltime)
            emphrs=8
	    ;;
	$isparttime)
        emphrs=4;
	    ;;
        *)
        emphrs=0;
	     ;;
esac
salary=$(($emphrs*$emprateperhr));
>>>>>>> UserCase4
