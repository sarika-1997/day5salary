isPartTime=1;
isFullTime=2;
employeerateperhour=20;
randomCheck=$((RANDOM%2));
if [ $isFullTime -eq $randomCheck ];
	then
		empHrs=8;
elif [ $isPartTime -eq $randomCheck ];
	then
		empHrs=4;
else
		empHrs=0;
fi

salary=$(($empHrs*$employeerateperhour));
