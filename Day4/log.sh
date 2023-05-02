for files in  ls *.log
do
	foldername=`echo $files | awk '{print $1}'`
	echo $files;
	echo $foldername;
	if [ -d $foldername ]
	then
	rm -r $foldername;
	fi
	mkdir $foldername;
	cp $files $foldername/$files;
	done
