#!/bin/bash
# LINE COLOUR
line=$(cat /etc/line)
# TEXT COLOUR BELOW
below=$(cat /etc/below)
# BACKGROUND TEXT COLOUR
back_text=$(cat /etc/back)
# NUMBER COLOUR
number=$(cat /etc/number)
# TEXT ON BOX COLOUR
box=$(cat /etc/box)
clear
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.me/ip);
clear
echo -e ""
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "   \e[$back_text             \e[30m═[\e[$box SYSTEM MENU\e[30m ]═          \e[m"
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "   \e[$number (•1)\e[m \e[$below Add New Subdomain\e[m"
echo -e "   \e[$number (•2)\e[m \e[$below Panel Domain\e[m"
echo -e "   \e[$number (•3)\e[m \e[$below Backup Vps\e[m"
echo -e "   \e[$number (•4)\e[m \e[$below Autobackup Vps\e[m"
echo -e "   \e[$number (•5)\e[m \e[$below Restore Vps\e[m"
echo -e "   \e[$number (•6)\e[m \e[$below Restart VPN\e[m"
echo -e "   \e[$number (•7)\e[m \e[$below Speedtest VPS\e[m"
echo -e "   \e[$number (•8)\e[m \e[$below ON/OFF Auto Reboot\e[m"
echo -e "   \e[$number (•9)\e[m \e[$below Netflix Checker\e[m"
echo -e "   \e[$number (10)\e[m \e[$below Dns Changer\e[m"
echo -e "   \e[$number (11)\e[m \e[$below Change Dropbear Version\e[m"
echo -e "   \e[$number (12)\e[m \e[$below Change Password VPS\e[m"
echo -e "   \e[$number (13)\e[m \e[$below SwapRAM Menu \e[m"
echo -e "   \e[$number (14)\e[m \e[$below Install Noobzvpn\e[m"
echo -e "   \e[$number (15)\e[m \e[$below Uninstall Noobzvpn\e[m"
echo -e "   \e[$number (16)\e[m \e[$below Install UDP Custom\e[m"
echo -e ""
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "   \e[$back_text \e[$box x)   MENU                             \e[m"
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "\e[$line"
read -p "        Please Input Number  [1-14 or x] :  "  sys
echo -e ""
case $sys in
1)
lsof -t -i tcp:80 -s tcp:listen | xargs kill;add-host
;;
2)
panel-domain
;;
3)
backup
;;
4)
autobackup
;;
5)
restore
;;
6)
restart
;;
7)
speedtest
;;
8)
autoreboot
;;
9)
netf
;;
10)
dns
;;
11)
change-dropbear
;;
12)
passwd
;;
13)
wget -q -O /usr/bin/swapram "https://raw.githubusercontent.com/NiL070/swapram/main/swapram.sh" && chmod +x /usr/bin/swapram && swapram
;;
14)
rm -rf noobzvpns;git clone https://github.com/NiL070/noobzvpns.git && cd noobzvpns && chmod +x install.sh && ./install.sh
;;
15)
cd noobzvpns && chmod +x uninstall.sh && ./uninstall.sh
;;
16)
wget https://raw.githubusercontent.com/NiL070/addon/main/udp-custom/udp.sh && bash udp.sh
;;
x)
menu
;;
*)
echo "Please enter an correct number"
sleep 1
system
;;
esac
