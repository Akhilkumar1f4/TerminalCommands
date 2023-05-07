read -p "Enter the number for printing the table:" number

for (( i=1; i<=10; i++  ))
do
table=$(( $i * $number ))
echo "Table of the given number $number*$i= "$table
done
