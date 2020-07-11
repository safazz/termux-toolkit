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
echo -e " ${k}1${pe}) MD4"
echo -e " ${k}2${pe}) MD5"
echo -e " ${k}3${pe}) SHA1"
echo -e " ${k}4${pe}) SHA224"
echo -e " ${k}5${pe}) SHA256"
echo -e " ${k}6${pe}) SHA384"
echo -e " ${k}7${pe}) SHA512"
echo -e " ${m}0${pe}) Back\n"
}

main(){
menu
printf "${p}${grs}safaz${pe} > "; read safa
if [ $safa = 1 ]; then
python2 1.py
elif [ $safa = 2 ]; then
python2 2.py
elif [ $safa = 3 ]; then
python2 3.py
elif [ $safa = 4 ]; then
python2 4.py
elif [ $safa = 5 ]; then
python2 5.py
elif [ $safa = 6 ]; then
python2 6.py
elif [ $safa = 7 ]; then
python2 7.py
elif [ $safa = 0 ]; then
cd $HOME/termux-toolkit;bash .color
else
printf "${m}wrong input !!\n"
sleep 3
main
fi
}

main
