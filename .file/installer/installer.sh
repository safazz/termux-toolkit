m="\033[1;31m"
p="\033[1;37m"
k="\033[1;33m"
h="\033[1;32m"
c="\033[1;36m"
grs="\033[4m"
pe="\033[00m"
ce="\033[0;36m"

main(){
echo -e ""
echo -e " ${k}1${pe}) Ngrok"
echo -e " ${k}2${pe}) Metasploit-framework"
echo -e " ${k}3${pe}) Routersploit"
echo -e " ${k}4${pe}) Sqlmap"
echo -e " ${k}5${pe}) Sqlmate"
echo -e " ${k}6${pe}) Wpscan"
echo -e " ${k}7${pe}) Nmap"
echo -e " ${k}8${pe}) XSStrike"
echo -e " ${k}9${pe}) Sqlscan"
echo -e " ${k}10${pe}) RED_HAWK"
echo -e " ${k}11${pe}) Sqliv"
echo -e " ${k}12${pe}) Termux OS Ubuntu"
echo -e " ${k}13${pe}) Termux OS Nethunter"
echo -e " ${k}14${pe}) Termux OS Arch"
echo -e " ${m}0${pe}) Back\n"
}

aslanz(){
main
printf "${p}${grs}safaz${pe} > "; read nih
if [ $nih = 1 ]; then
chmod +x installngrok;./installngrok
elif [ $nih = 2 ]; then
chmod +x installmsf;./installmsf
elif [ $nih = 3 ]; then
echo -e "${c}[+] ${pe}Please wait installing 'Routersploit'"
cd;git clone https://github.com/threat9/routersploit &> /dev/null
echo -e "${c}[+] ${pe}Installing successfully seved $HOME"
elif [ $nih = 4 ]; then
echo -e "${c}[+] ${pe}Please wait installing 'Sqlmap'"
cd;git clone https://github.com/sqlmapproject/sqlmap &> /dev/null
echo -e "${c}[+] ${pe}Installing successfully seved $HOME"
elif [ $nih = 5 ]; then
echo -e "${c}[+] ${pe}Please wait installing 'Sqlmate'"
cd;git clone https://github.com/s0md3v/sqlmate &> /dev/null
echo -e "${c}[+] ${pe}Installing successfully seved $HOME"
elif [ $nih = 6 ]; then
echo -e "${c}[+] ${pe}Please wait installing 'Wpscan'"
cd;git clone https://github.com/wpscanteam/wpscan &> /dev/null
echo -e "${c}[+] ${pe}Installing successfully seved $HOME"
elif [ $nih = 7 ]; then
echo -e "${c}[+] ${pe}Please wait installing 'Nmap'"
apt install nmap -y &> /dev/null
echo -e "${c}[+] ${pe}Installing successfully"
elif [ $nih = 8 ]; then
echo -e "${c}[+] ${pe}Please wait installing 'XSStrike'"
cd;git clone https://github.com/s0md3v/XSStrike &> /dev/null
echo -e "${c}[+] ${pe}Installing successfully seved $HOME"
elif [ $nih = 9 ]; then
echo -e "${c}[+] ${pe}Please wait installing 'Sqlscan'"
cd;git clone https://github.com/Cvar1984/sqlscan &> /dev/null
echo -e "${c}[+] ${pe}Installing successfully seved $HOME"
elif [ $nih = 10 ]; then
echo -e "${c}[+] ${pe}Please wait installing 'RED_HAWK'"
cd;git clone https://github.com/Tuhinshubhra/RED_HAWK &> /dev/null
echo -e "${c}[+] ${pe}Installing successfully seved $HOME"
elif [ $nih = 11 ]; then
echo -e "${c}[+] ${pe}Please wait installing 'Sqliv'"
cd;git clone https://github.com/the-robot/sqliv
echo -e "${c}[+] ${pe}Installing successfully seved $HOME"
elif [ $nih = 12 ]; then
echo -e "${c}[+] ${pe}Downloading packages ubuntu"
cd;git clone https://github.com/Neo-Oli/termux-ubuntu &> /dev/null;cd termux-ubuntu;bash ubuntu.sh
elif [ $nih = 13 ]; then
echo -e "${c}[+] ${pe}Downloading packages nethunter"
cd;git clone https://github.com/Hax4us/Nethunter-In-Termux;cd Nethunter-In-Termux;chmod +x kalinethunter;./kalinethunter;startkali
elif [ $nih = 14 ]; then
echo -e "${c}[+] ${pe}Downloading packages arch"
pkg install curl bsdtar -y ;curl -OL https://raw.githubusercontent.com/TermuxArch/TermuxArch/master/setupTermuxArch.bash;bash setupTermuxArch.bash &> /dev/null
elif [ $nih = 0 ]; then
cd $HOME/termux-toolkit;bash .color
else
echo -e "${m}wrong input !!"
sleep 3
aslanz
fi
}
aslanz
