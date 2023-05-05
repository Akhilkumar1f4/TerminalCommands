read -p "Random:" Random1
read -p "Random:" Random2
echo $(($Random1 % 10 + $Random2 % 10))


