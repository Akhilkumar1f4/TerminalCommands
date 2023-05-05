read -p "enter a number" a
read -p  "enter b number" b
read -p "enter c number" c
exp1=$(( $a + $b * $c ))
exp2=$(( $a % $b + $c ))
exp3=$(( $c + $a / $b ))
exp4=$(( $a * $b + $c ))
if [ $exp1 -ge  $exp2 -a $exp1 -ge $exp3 -a $exp1 -ge $exp4 ]
then 
     echo "maximuma" $exp1 
elif [ $exp2 -ge $exp1 -a $exp2 -ge $exp3 -a $exp2 -ge $exp4 ]
then
     echo "maximuma1" $exp2
elif [ $exp3 -ge $exp1 -a $exp3 -ge $exp2 -a $exp3 -ge $exp4 ]
then
	 echo "maximuma2" $exp3
else
	 echo "maximuma3" $exp4
fi
if [ $exp1 -le  $exp2 -a $exp1 -le $exp3 -a $exp1 -le $exp4 ]
then
     echo "minimuma" $exp1
elif [ $exp2 -le $exp1 -a $exp2 -le $exp3 -a $exp2 -le $exp4 ]
then
        echo "minimuma1" $exp2
elif [ $exp3 -le $exp1 -a $exp3 -le $exp2 -a $exp3 -le $exp4 ]
then
         echo "minimuma2" $exp3
else
         echo "minimuma3" $exp4
fi
        
