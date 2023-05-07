read -p "Enter the number:" number
i=1;
while [ $number -le 1024 ]
do
answer=$(( $number * $i))
echo "Answer:" $answer
((i++))
done
