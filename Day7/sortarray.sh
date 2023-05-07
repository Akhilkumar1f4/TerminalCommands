for (( i=0; i<10; i++ ))
do
  rand_num=$(( $RANDOM % 900 + 100 ))
  arr[$i]=$rand_num
done

echo "Original array: ${arr[@]}"

# Sort the array in ascending order
sorted_arr=( $(
  for i in "${arr[@]}"
  do
    echo "$i"
  done | sort -n ) )

echo "Sorted array: ${sorted_arr[@]}"

# Find the 2nd largest element
second_max=${sorted_arr[8]}
echo "The 2nd largest element is: $second_max"

# Find the 2nd smallest element
second_min=${sorted_arr[1]}
echo "The 2nd smallest element is: $second_min"
