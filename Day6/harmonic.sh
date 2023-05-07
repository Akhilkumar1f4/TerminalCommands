read -p  "enter number" n
harmonic=1
	for(( i=1; i<n; i++ ))
	do
		sum=$harmonic+1/$i
		echo $sum
	done
	
