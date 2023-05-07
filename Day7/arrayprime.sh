function prime_factors {
  num=$1
  i=2
  factors=()

  while [[ $num -gt 1 ]]
  do
    if [[ $((num % i)) -eq 0 ]]
    then
      factors+=($i)
      num=$((num / i))
    else
      i=$((i + 1))
    fi
  done
