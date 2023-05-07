for (( i=0; i<10; i++ ))
do
  rand_num=$(( $RANDOM % 900 + 100 ))
  arr[$i]=$rand_num
done

echo "Original array: ${arr[@]}"

# Find the 2nd largest element
max=${arr[0]}
second_max=${arr[0]}
for (( i=0; i<${#arr[@]}; i++ ))
do
  if [[ ${arr[$i]} -gt $max ]]
  then
    second_max=$max
    max=${arr[$i]}
  elif [[ ${arr[$i]} -gt $second_max && ${arr[$i]} -ne $max ]]
  then
    second_max=${arr[$i]}
  fi
done

echo "The 2nd largest element is: $second_max"

# Find the 2nd smallest element
min=${arr[0]}
second_min=${arr[0]}
for (( i=0; i<${#arr[@]}; i++ ))
do
  if [[ ${arr[$i]} -lt $min ]]
  then
    second_min=$min
    min=${arr[$i]}
  elif [[ ${arr[$i]} -lt $second_min && ${arr[$i]} -ne $min ]]
  then
    second_min=${arr[$i]}
  fi
done

echo "The 2nd smallest element is: $second_min"


