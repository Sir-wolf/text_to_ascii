#!/bin/bash
# A menu driven shell script sample template 
## ----------------------------------
# Step #1: Define variables
# ----------------------------------
EDITOR=vim
PASSWD=/etc/passwd
RED='\033[0;41;30m'
STD='\033[0;0;39m'
 
# ----------------------------------
# Step #2: User defined function
# ----------------------------------
pause(){
  read -p "Press [Enter] key to continue..." fackEnterKey
}
#### 9 option 
one(){
	clear
	echo "~~~~~~~~~~~~~~~~~~~~~"	
	cat ascii_menu.txt
	echo "~~~~~~~~~~~~~~~~~~~~~"
	chmod +x text.py
	./text.py
        pause
}
 
two(){
	clear
	echo "~~~~~~~~~~~~~~~~~~~~~"	
	cat ascii_menu.txt
	echo "~~~~~~~~~~~~~~~~~~~~~"
	chmod +x smkeyboard.py
	./smkeyboard.py
        pause
}

three(){
	clear
	echo "~~~~~~~~~~~~~~~~~~~~~"	
	cat ascii_menu.txt
	echo "~~~~~~~~~~~~~~~~~~~~~"
	chmod +x slant.py
	./slant.py
        pause
}

four(){
	clear
	echo "~~~~~~~~~~~~~~~~~~~~~"	
	cat ascii_menu.txt
	echo "~~~~~~~~~~~~~~~~~~~~~"
	chmod +x graffiti.py
	./graffiti.py
        pause
}

five(){
	clear
	echo "~~~~~~~~~~~~~~~~~~~~~"	
	cat ascii_menu.txt
	echo "~~~~~~~~~~~~~~~~~~~~~"
	chmod +x dotmatrix.py
	./dotmatrix.py
        pause
}

six(){
	clear
	echo "~~~~~~~~~~~~~~~~~~~~~"	
	cat ascii_menu.txt
	echo "~~~~~~~~~~~~~~~~~~~~~"
	chmod +x cosmic.py
	./cosmic.py
        pause
}

seven(){
	clear
	echo "~~~~~~~~~~~~~~~~~~~~~"	
	cat ascii_menu.txt
	echo "~~~~~~~~~~~~~~~~~~~~~"
	chmod +x block.py
	./block.py
        pause
}

eight(){
	clear
	echo "~~~~~~~~~~~~~~~~~~~~~"	
	cat ascii_menu.txt
	echo "~~~~~~~~~~~~~~~~~~~~~"
	chmod +x banner.py
	./banner.py
        pause
}

nine(){
	clear
	echo "~~~~~~~~~~~~~~~~~~~~~"	
	cat ascii_menu.txt
	echo "~~~~~~~~~~~~~~~~~~~~~"
	chmod +x 3-d.py
	./3-d.py
        pause
}

# function to display menus
show_menus() {
	clear
	echo "~~~~~~~~~~~~~~~~~~~~~"	
	cat ascii_menu.txt
	echo "~~~~~~~~~~~~~~~~~~~~~"
    echo "    "
    echo "  Fonts : "
	echo "1. Simple"
    echo "2. Keyboard"
    echo "3. Slant"
    echo "4. Graffiti"
    echo "5. Dotmatrix"
    echo "6. Cosmic"
    echo "7. Block"
    echo "8. Banner"
    echo "9. 3D"
    echo "    "
	echo "10. Exit"
    echo "    "
}

read_options(){
	local choice
	read -p "Enter choice [ 1 - 10 ] : " choice
	case $choice in
		1) one ;;
		2) two ;;
        3) three ;;
        4) four ;;
        5) five ;;
        6) six ;;
        7) seven ;;
        8) eight ;;
        9) nine ;;
		10) exit 0;;
		*) echo -e "${RED}Error...${STD}" && sleep 2
	esac
}
 
# ----------------------------------------------
# Step #3: Trap CTRL+C, CTRL+Z and quit singles
# ----------------------------------------------
trap '' SIGINT SIGQUIT SIGTSTP
 
# -----------------------------------
# Step #4: Main logic - infinite loop
# ------------------------------------
while true
do
 
	show_menus
	read_options
done