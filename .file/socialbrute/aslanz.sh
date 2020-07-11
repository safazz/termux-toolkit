#!/bin/bash
m="\033[1;31m"
p="\033[1;37m"
k="\033[1;33m"
h="\033[1;32m"
c="\033[1;36m"
grs="\033[4m"
pe="\033[00m"
ce="\033[0;36m"

menu(){
echo -e ""
echo -e " ${k}1${pe}) Facebook brute"
echo -e " ${k}2${pe}) Facebook random"
echo -e " ${k}3${pe}) Instagram brute"
echo -e " ${k}4${pe}) Generator password attack"
echo -e " ${m}0${pe}) Back\n"
}

main(){
menu
printf "${p}${grs}safaz${pe} > "; read safa
if [ $safa = 1 ]; then
python2 fb.py
elif [ $safa = 2 ]; then
echo -e ""
echo -e " ${k}1${pe}) Login Token"
echo -e " ${k}2${pe}) Login Manual"
echo -e " ${m}0${pe}) Back\n"
printf "${p}${grs}safaz${pe} > "; read fb
if [ $fb = 1 ]; then
printf "${k}[?] ${pe}Token > "; read token
echo $token >> token.txt
printf "${m}[ ${pe}Enter ${m}]"; read lelah
python2 fbrandom.py
elif [ $fb = 2 ]; then
python2 fbrandom.py
elif [ $fb = 0 ]; then
main
else
printf "${m}wrong input !!\n"
sleep 1
main
fi
elif [ $safa = 3 ]; then
bash insta
elif [ $safa = 4 ]; then
python3 attack.py
elif [ $safa = 0 ]; then
cd $HOME/termux-toolkit;bash .color
else
printf "${m}wrong input !!\n"
sleep 1
main
fi
}

main
