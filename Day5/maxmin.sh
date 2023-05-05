maximum=$((RANDOM % 200))
minimum=$((RANDOM % 200))
if [ $maximum -gt  $minimum ]
then
               for ((i=0; i<5; i++))
		do
         	echo " the maximum values of random 3 digit values:"$maximum
		done
		for((i=0; i<5; i++))
		do
		echo "the minimum values of random 3 digit values :"$minimum
		done
fi


