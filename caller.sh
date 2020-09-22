#! /bin/bash

clear
printf '\e[92m \e[1m'
echo "WELCOME TO"
figlet "" CALLER
echo "DEVELOPED BY VSPSENTHOOR"
printf '\e[93m'
echo "Press 1 for save contact"
echo "Press 2 for Call to saved contact"
echo "Press 3 for Call to unsaved contact"
echo "Press 4 for view contact list"
read -p "Choose any one: " a
if [ "$a" == 1 ];
then
     read -p "Enter the contact name :" c
     read -p "Enter the contact number :" n
     cd /data/data/com.termux/files/home/caller/contact/	
     touch "$c".sh
     echo "#! /bin/bash" >"$c".sh
     echo "termux-telephony-call $n" >>"$c".sh
     chmod +x "$c".sh
     echo "$c" >>list.txt
     cd ..
     echo "Your new contact saved as $c."
elif [ "$a" == 2 ];
then
     printf '\e[92m'
     cd /data/data/com.termux/files/home/caller/contact/ && cat list.txt
     read -p "Choose any contact: " x
     echo "Calling to $x ....."
     ./"$x".sh
elif [ "$a" == 3 ]
then
     read -p "Please enter the 10 dogit number:" y
     echo "Call to $y "
     termux-telephony-call "$y"
elif [ "$a" == 4 ]
then
     cd /data/data/com.termux/files/home/caller/contact/
     printf '\e[92m'
     cat list.txt
     printf '\e[93m'
     echo "Type exit and hit enter for exit"
else
     echo "enter correctly"
fi
printf '\e[0m'

