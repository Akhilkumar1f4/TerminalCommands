declare -A rolls

# Loop until one number has been rolled 10 times
while true; do
  # Roll the die
  roll=$((1 + RANDOM % 6))

  # Increment the count for the rolled number in the dictionary
  if [[ -v "rolls[$roll]" ]]; then
    rolls[$roll]=$((rolls[$roll] + 1))
  else
    rolls[$roll]=1
  fi

  # Check if any number has been rolled 10 times
  for count in "${rolls[@]}"; do
    if [[ $count -eq 10 ]]; then
      break 2
    fi
  done
done

# Find the number that was rolled the most and the least
max=1
min=1
for roll in "${!rolls[@]}"; do
  if [[ ${rolls[$roll]} -gt ${rolls[$max]} ]]; then
    max=$roll
  fi
  if [[ ${rolls[$roll]} -lt ${rolls[$min]} ]]; then
    min=$roll
  fi
done

# Print the results
echo "Results:"
for roll in "${!rolls[@]}"; do
  echo "Number $roll was rolled ${rolls[$roll]} times"
done
echo "The number that was rolled the most was $max"
echo "The number that was rolled the least was $min"
