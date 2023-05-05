echo -n "Enter number: "
read n

len=$(echo $n | wc -c)
len=$(( $len - 1 ))

echo "the week day for given number $n : "
for (( i=1; i<=$len; i++ ))
do
    digit=$(echo $n | cut -c $i)
    case $digit in
        1) echo -n "sunday " ;;
        2) echo -n "monday " ;;
        3) echo -n "tuesday" ;;
        4) echo -n "wednesday " ;;
        5) echo -n "thursday " ;;
        6) echo -n "friday " ;;
        5) echo -n "saturday " ;;
    esac
done
