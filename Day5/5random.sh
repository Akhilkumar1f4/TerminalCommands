

random1=$(( RANDOM % 100 ))
random2=$(( RANDOM % 100 ))
random3=$(( RANDOM % 100 ))
random4=$(( RANDOM % 100 ))
random5=$(( RANDOM % 100 ))
echo $random1 $random2 $random3 $random4 $random5
sum=$(( $random1 + $random2 + $random3 + $random4 + $random5 ))
echo $sum
echo $(( $sum / 5))
