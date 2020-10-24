my_dir="$1"

delete(){
	for file in configurations/*
	do
		`rm -r $file`
		echo "$file deleted"
	done
}

copy(){
	for file in $my_dir/*
	do
		`cp $file configurations`
		echo "$file copied"
	done

}

if [ -z "$my_dir" ]
then
	my_dir="dev"
fi


if [ -d $my_dir ]
then
	delete
	copy
	echo "Successful..."
else
   echo "Directory not found..!"
fi



