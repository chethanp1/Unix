clear
echo "Enter the keyword to be searched"
read key
echo "Enter the file to be searched"
read file
if [ -e $file ]
then 
	echo "Valid file"
else
	echo "Invalid file"
	exit
fi
count=`grep -iw "$key" $file | wc -l`
echo "The word $text occur $count times in the file $file"


