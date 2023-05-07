read -p "Enter the number" n
cnt=0
	for (( i=1; i<256; i++))
	do
	echo "2^$cnt = $i"
	((cnt++))
	i= $((i*2))
	if [ $cnt  -gt $n ]
	then
	break
	fi
	done
