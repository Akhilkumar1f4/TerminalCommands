read -p "enter number" n
read  -p "enter fact" fact
	for ((i=0; i<=n ; i++ ))
	do
	fact=$fact*$i;
		echo  $fact   	
	done
