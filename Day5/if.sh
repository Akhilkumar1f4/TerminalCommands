read -p "the first value:" x;
read -p "the second value:" y;
if [ $x -gt $y ]
then
echo "x is greater"
else
echo "y is greater"
fi
