declare -A math;
read -p "Enter value a: " a;
read -p "Enter value b: " b
read -p "Enter value c: " c

math[calc1]=$(( a+b*c ));
math[calc2]=$(( a*b+c ));
math[calc3]=$(( c+a/b ));
math[calc4]=$(( a%b+c ));

for ((cnt=0;cnt<${#math[@]};cnt++))
do
	varArray[cnt]=${math[calc"$(( cnt+1 ))"]};
done

echo "Original order of array :- "${varArray[@]};

for (( i=0;i<${#varArray[@]};i++ ))
do
	for (( j=i+1; j<${#varArray[@]};j++ ))
	do
		if [ ${varArray[i]} -lt ${varArray[j]} ]
		then
			temp=${varArray[i]};
			varArray[i]=${varArray[j]};
			varArray[j]=$temp;
		fi
	done
	echo "After step $i :- "${varArray[@]};
done

echo $a $b $c;
echo ${math[@]};
echo ${!math[@]};
echo "Sorted array :- "${varArray[@]};
