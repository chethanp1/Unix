clear
mkcd()
{
if [ $# -eq 1 ]
then 
	echo "Valid Input"
else
	echo "Invalid Input"
	fi
for directory in $*
do 
if [ -d $directory ]
then 
	cd $directory
elif [ -f $directory ]
then 
	echo "$directory is not a directory"
else
	mkdir $directory 
	cd $directory 
	fi
done
IFS="/"
oldifs="IFS"
echo "present working directory $pwd"
}


