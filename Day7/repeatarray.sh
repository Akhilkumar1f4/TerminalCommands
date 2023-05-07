repeated_digits=()

# Loop through the range from 0-100
for (( i=0; i<=10; i++ ))
do
  # Convert the number to a string
  num_str=$(echo $i | tr -d '\n')

  # Check if the number has a repeated digit
  if [[ $(echo $num_str | grep -E '(.)\1') ]]
  then
    repeated_digits+=($i)
  fi
done

echo "The digits that are repeated twice are: ${repeated_digits[@]}"
