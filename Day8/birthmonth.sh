declare -A birthMonths

# Generate birth months for 50 individuals between the years 1992 and 1993
for (( i=1; i<=50; i++ )); do
  # Generate a random birth month between January 1992 and December 1993
  birthMonth=$(date -d "01/01/1992 + $((RANDOM % 730)) days" +"%m/%Y")
  
  # Increment the count for the birth month in the birthMonths array
  if [[ -v "birthMonths[$birthMonth]" ]]; then
    birthMonths[$birthMonth]=$((birthMonths[$birthMonth] + 1))
  else
    birthMonths[$birthMonth]=1
  fi
done

# Find the individuals with the same birth month
for month in "${!birthMonths[@]}"; do
  if [[ ${birthMonths[$month]} -gt 1 ]]; then
    echo "The following individuals have birthdays in $month:"
    for (( i=1; i<=50; i++ )); do
      birthMonth=$(date -d "01/01/1992 + $((RANDOM % 730)) days" +"%m/%Y")
      if [[ $birthMonth == $month ]]; then
        echo "Individual $i"
      fi
    done
    echo
  fi
done
