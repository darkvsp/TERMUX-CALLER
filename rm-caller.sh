#! /bin/bash
printf '\e[91m'
echo "Do you want to remove caller: "
printf '\e[93m'
read -p "Please put yes or no: " z
if [ "$z" == "yes" ]
then
     cd /data/data/com.termux/files/usr/bin/
     rm caller.sh
     cd
     cd caller
     rm -rf contact
     rm setup.sh
     cd
     echo "Now all binary files & setup files are removed"
     echo "Please enter 'rm -rf caller' for remove the root"
     printf '\e[0m'
elif [ "$z" == "no" ]
then
     echo "Exiting from tool"
     cd
     printf '\e[0m'
else
    echo "Please enter the correct option"
    printf '\e[0m'
fi
