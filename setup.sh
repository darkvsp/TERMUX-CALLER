#! /bin/bash

clear
printf '\e[92m'
echo "WELCOME TO CALLER"
figlet "" C A L L E R
echo "CALLER setup started"
mkdir contact
mv list.txt $HOME/caller/contact
echo "*processing.....!"
sleep 1.5
echo "setup completed, to run the tool use ./caller.sh"
printf '\e[0m'
