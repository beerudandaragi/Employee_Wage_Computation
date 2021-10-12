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
totalsalary=0;
numworkdays=20;

for (( day=1; day<=$numworkdays; day++))
do
 empcheck=$((RANDOM%3));
 case $empcheck in
	 $isfulltime)
        emphrs=8 
	;;
     $isparttime)
        emphrs=4
	;;
*) 
	emphrs=0
	;;
esac
salary=$(($emphrs*$emprateperhr));
totalsalary=$(($totalsalary+$salary));
done
IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=10;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

totalemphrs=0;
totalworkingdays=0;
while   [[ $totalemphrs -lt $MAX_HRS_IN_MONTH && $totalworkingdays -lt $NUM_WORKING_DAYS ]]

do
	((totalworkingdays ++))
	empcheck=$((RANDOM%3));
	case $empcheck in
	   $IS_FULL_TIME)

		emphrs=8
		;;

	   $IS_PART_TIME)
		emphrs=4
		;;
            *)

		emphrs=0
		;;
   esac
   totalemphrs=$(($totalemphrs + $emphrs))

done

totalsalary=$(($totalemphrs * $EMP_RATE_PER_HR)) 
#IS_PART_TIME=1;
#IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=4;
#EMP_RATE_PER_HR=20;
#NUM_WORKING_DAYS=20;

#totalemphr=0;
#totalworkingdays=0;
function getworkhrs () {
	local $empcheck=$1
	case $empcheck in
	   $IS_FULL_TIME)
		emphrs=8
		;;
	   $IS_PART_TIME)
		emphrs=4
		;;
           *)
		emphrs=0
		;;
 esac 
 echo $emphrs
}
while [[ $totalemphrs -lt $MAX_HRS_IN_MONTH && $totalworkingdays -lt $NUM_WORKING_DAYS ]]

do
	((totalworkingdays++))
	empcheck=$((RANDOM%3));
		emphrs="$( getworkhrs $empcheck )"
                #totalemphrs=$(($totalemphrs + $emphrs))
	    done

            #totalsalary=$(($totalemphrs * $EMP_RATE_PER_HR));


