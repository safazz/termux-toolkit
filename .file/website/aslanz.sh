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
echo -e " ${k}1${pe}) Port Scanner"
echo -e " ${k}2${pe}) Whois Domain Whois IP Lookup"
echo -e " ${k}3${pe}) Header HTTP Header Domain Lookup"
echo -e " ${k}4${pe}) Reverse IP Domain Lookup"
echo -e " ${k}5${pe}) Iplocator Retrieve IP Geolocation Info"
echo -e " ${m}0${pe}) Back\n"
}

main(){
menu
printf "${p}${grs}safaz${pe} > "; read safa
if [ $safa = 1 ]; then
python2 port.py
elif [ $safa = 2 ]; then
python2 whois.py
elif [ $safa = 3 ]; then
python2 header.py
elif [ $safa = 4 ]; then
python2 reverse.py
elif [ $safa = 5 ]; then
python2 iplocator.py
elif [ $safa = 0 ]; then
cd $HOME/termux-toolkit;bash .color
else
printf "${m}wrong input !!\n"
sleep 3
main
fi
}
main
