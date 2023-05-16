clear
mycd()
{
if [ $# -eq 1 ]
then 
	echo "Valid Input"
else
	echo "Invalid Input"
fi
if [ "$1" == "-" ]
then 
	cd ..
	echo "Moved to parent directory $pwd"
elif [ -d "$1" ]
then 
	cd "$1"
	echo "Moved to present directory $pwd"
else
	echo "$1 is invalid directory"
	fi
}

