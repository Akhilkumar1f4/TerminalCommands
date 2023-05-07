
read -p "Enter list of integers separated by spaces: " input


read -a arr <<< $input
for (( i=0; i<${#arr[@]}-2; i++ ))
do
  for (( j=i+1; j<${#arr[@]}-1; j++ ))
  do
    for (( k=j+1; k<${#arr[@]}; k++ ))
    do
      if [[ $(( ${arr[$i]} + ${arr[$j]} + ${arr[$k]} )) -eq 0 ]]
      then
        echo "Sum of ${arr[$i]}, ${arr[$j]}, and ${arr[$k]}" adds to zero
      fi
    done
  done
done







