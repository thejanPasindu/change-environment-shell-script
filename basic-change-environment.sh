my_dir="$1"

if [ -z "$my_dir" ]
then
	my_dir="dev"
fi


if [ -d $my_dir ]
then
	if [ -f "$my_dir/application.properties" ] && [ -f "$my_dir/db-config.yml" ]
	then
		`cp $my_dir/application.properties configurations`
		`cp $my_dir/db-config.yml configurations`
		echo "Successful..."
	else
		echo "one or more file not found..!"	
	fi
else
   echo "Directory not found..!"
fi



