read -p "first random:" RANDOM1
read -p "second random:" RANDOM2
echo $(( $RANDOM1 % 10 + $RANDOM2 % 10 ));
