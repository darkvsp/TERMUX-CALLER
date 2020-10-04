#! /bin/bash
clear
printf '\e[92m'
echo "Installing setup files for caller..."
pkg install nano figlet termux-api -y
sleep 1.0
clear
echo "WELCOME TO CALLER"
figlet "" C A L L E R
echo "CALLER setup started"
chmod +x caller.sh
mkdir contact
mv list.txt $HOME/caller/contact
mv caller.sh /data/data/com.termux/files/usr/bin/
cd
echo "*processing.....!"
sleep 1.5
echo "setup completed, to run the tool use caller.sh"
printf '\e[0m'
