#Shell Program to display home directory of user by passing username as arguments.
clear
if [ $# -eq 0 ]
then
    echo "No username passed"
    echo "Exiting the program"
    exit
fi
file="/etc/passwd" 
cat $file | cut -d \: -f 1 > name.txt
for username in $*
do
    grep -w $username name.txt
    if [ $? -eq 0 ]
    then
        echo "Valid Username"
        echo "Home Directory is:"
        cat $file | grep -w ^$username | cut -d \: -f 6
    else
        echo "Not Valid Username"
    fi
done
