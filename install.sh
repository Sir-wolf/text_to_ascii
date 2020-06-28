#!/bin/bash
clear
cat logo_install.txt;

echo "[✔] Checking directories...";
if [ -d "/home/text_to_ascii" ] ;
then
echo "[◉] A directory hash was found! Do you want to replace it? [Y/n]:" ; 
read mama
if [ $mama == "y" ] ; 
then
 rm -R "/home/text_to_ascii"
else
 exit
fi
fi

 echo "[✔] Installing ...";
 echo "";
 cd /home/text_to_ascii;
 git clone https://github.com/Sir-wolf/text_to_ascii.git;
 chmod +x menu.sh
 pip3 install pyfiglet 


if [ -d "/home/text_to_ascii" ] ;
then
echo "";
echo "[✔] Tool installed successfully! [✔]";
echo "";
echo "[✔]====================================================================[✔]";
echo "[✔]      All is done!! You can execute tool by typing ./menu.sh !       [✔]";
echo "[✔]====================================================================[✔]";
echo "";  
else
  echo "[✘] Installation faid![✘] ";
  exit
fi