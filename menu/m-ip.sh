#!/bin/bash
NC='\e[0m'
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
ipsaya=$(wget -qO- ipinfo.io/ip)
data_server=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
date_list=$(date +"%Y-%m-%d" -d "$data_server")
data_ip="https://raw.githubusercontent.com/Tomketstore/izin//main/admin"
reseller=$(curl -sS https://raw.githubusercontent.com/Tomketstore/izin//main/admin | grep $MYIP | awk '{print $2}')
checking_sc() {
  useexp=$(wget -qO- $data_ip | grep $ipsaya | awk '{print $3}')
  if [[ $date_list < $useexp ]]; then
    echo -ne
  else
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e "\033[42m          ANDA HARUS MENDAFTAR DAHULU UNTUK MENJADI SELLER         \033[0m"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e ""
    echo -e "            ${RED}DAFTAR DULU DEK !${NC}"
    echo -e "   \033[0;33mYour VPS${NC} $ipsaya \033[0;33mHas been Banned${NC}"
    echo -e "     \033[0;33mBuy access permissions for scripts${NC}"
    echo -e "             \033[0;33mContact Admin :${NC}"
    echo -e "      \033[0;36mTelegram${NC} t.me/freetunnel1"
    echo -e "      ${GREEN}WhatsApp${NC} wa.me/6281927625651"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    exit
  fi
}
checking_sc
clear
export MYIP=$( curl -s https://ipinfo.io/ip/ )
SELLERR=$(curl -sS ${Repo1}ip | grep $MYIP | awk '{print $2}')
Exp100=$(curl -sS ${Repo1}ip | grep $MYIP | awk '{print $3}')
data_ip="https://raw.githubusercontent.com/Tomketstore/izin//main/ip"
d2=$(date -d "$date_list" +"+%s")
d1=$(date -d "$Exp" +"+%s")
dayleft=$(( ($d1 - $d2) / 86400 ))

#########################
[[ ! -f /usr/bin/git ]] && apt install git -y &> /dev/null
# COLOR VALIDATION
clear
RED='\033[0;31m'
NC='\e[0m'
gray="\e[1;30m"
Blue="\033[1;36m"
GREEN='\033[0;32m'
grenbo="\033[1;95m"
YELL='\033[1;33m'
BGX="\033[42m"
END='\e[0m'
AKTIF="VERIFIED"
TOKEN="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"
REPO="https://github.com/freetunnel/izin.git"
EMAIL="ageng.an46@gmail.com"
USER="freetunnel"


add-ip() {
TIMES="10"
CHATID="-1001907100770"
KEY="6819626240:AAGIKBJZt7Gj9PfzcmNOaOOlctTrTXNGRc"
URL="https://api.telegram.org/bot$KEY/sendMessage"


    today=`date -d "0 days" +"%Y-%m-%d"`
    git clone ${REPO} /root/izin/ &> /dev/null
    clear
    echo -e ""
    echo -e ""
    read -p "Input IP Address : " ip
    CLIENT_EXISTS=$(grep -w $ip /root/izin/ip | wc -l)
    if [[ ${CLIENT_EXISTS} == '1' ]]; then
    echo "IP Already Exist !"
    exit 0
    fi
    echo -e ""
   # read -p "  Input Username IP (Example : reyz) : " name
    name=FTP`</dev/urandom tr -dc A-Z0-9 | head -c4`
    echo -e ""
    clear
    echo -e ""
    echo -e ""
    echo -e "\033[1;93m┌──────────────────────────────────────────┐\033[0m"
    echo -e "\033[1;96m                     REGIST IP VPS \033[0m"
    echo -e "\033[1;93m└──────────────────────────────────────────┘\033[0m"
    echo "  [1] 30 Days"
    echo "  [2] 60 Days"
    echo "  [3] 90 Days"
    echo "  [4] Lifetime"
    echo "  [5] Custom Expiration Date"
    echo -e "\033[1;93m└──────────────────────────────────────────┘\033[0m"
    echo -e ""
    read -p "  Input Menu Number : " exp
    
    if [[ ${exp} == '1' ]]; then
    exp2=`date -d "30 days" +"%Y-%m-%d"`
    echo "### ${name} ${exp2} ${ip}" >> /root/izin/ip
    elif [[ ${exp} == '2' ]]; then
    exp2=`date -d "60 days" +"%Y-%m-%d"`
    echo "### ${name} ${exp2} ${ip}" >> /root/izin/ip
    elif [[ ${exp} == '3' ]]; then
    exp2=`date -d "90 days" +"%Y-%m-%d"`
    echo "### ${name} ${exp2} ${ip}" >> /root/izin/ip
    elif [[ ${exp} == '4' ]]; then
    exp2="Lifetime"
    echo "### ${name} ${exp2} ${ip}" >> /root/izin/ip
    elif [[ ${exp} == '5' ]]; then
    read -p "Input Expired Days : " exp11
    exp2=`date -d "$exp11 days" +"%Y-%m-%d"`
    echo "### ${name} ${exp2} ${ip}" >> /root/izin/ip
    fi
    cd /root/izin
    git config --global user.email "${EMAIL}" &> /dev/null
    git config --global user.name "${USER}" &> /dev/null
    rm -rf .git &> /dev/null
    git init &> /dev/null
    git add . &> /dev/null
    git commit -m m &> /dev/null
    git branch -M main &> /dev/null
    git remote add origin https://github.com/freetunnel/izin
    git push -f https://${TOKEN}@github.com/freetunnel/izin.git &> /dev/null
    rm -rf /root/izin
    clear
    sleep 1
    echo "  Registering IP Address..."
    sleep 1
    echo "  Processing..."
    sleep 1
    echo "  Done!"
    sleep 1
    clear
TEXT="
<code>───────────────────────────</code>
<code>    SUCCES  REGISTERED IP VPS</code>
<code>───────────────────────────</code>
USERNAME     :<code> $name</code>
IP Address     :<code> $ip</code>
Registered On  :<code> $today</code>
Expired On     :<code> $exp2</code>
<code>───────────────────────────</code>
"
curl -s --max-time $TIMES -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
  echo -e "\033[96m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo -e "               \e[1;97mSuccesfully Add IP Address${NC}"
    echo -e "\033[96m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"

    echo -e ""
    echo -e "  ${YELL}Username${NC}      : $name"
    echo -e "  ${YELL}IP Address${NC}    : $ip"
    echo -e "  ${YELL}Registered On${NC} : $today"
    echo -e "  ${YELL}Expired On${NC}    : $exp2"
    echo ""
    echo -e "\033[96m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
}

renew-ip() {
TIMES="10"
CHATID="-1001907100770"
KEY="6819626240:AAGIKBJZt7Gj9PfzcmNOOOlctTrTIXNGRc"
URL="https://api.telegram.org/bot$KEY/sendMessage"

    rm -rf /root/izin
    git clone ${REPO} /root/izin/ &> /dev/null
    clear
    echo -e "\033[96m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo -e "          \e[1;97mList IP Address Have Been Registered${NC}"
    echo -e "\033[96m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo ""
    grep -E "^###" "/root/izin/ip" | cut -d ' ' -f 2-6 | column -t | sort | uniq
    echo ""
    echo -e "\033[96m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo ""
    read -p "  Input IP Address To Renew : " ipdel
    read -p "  Input Days  : " days
    name=$(cat /root/izin/ip | grep $ipdel | awk '{print $2}')
    exp=$(cat /root/izin/ip | grep $ipdel | awk '{print $3}')
    now=$(date +%Y-%m-%d)
    d1=$(date -d "$exp" +%s)
    d2=$(date -d "$now" +%s)
    exp2=$(( (d1 - d2) / 86400 ))
    exp3=$(($exp2 + $days))
    exp4=`date -d "$exp3 days" +"%Y-%m-%d"`
    sed -i "s/### $name $exp $ipdel/### $name $exp4 $ipdel/g" /root/izin/ip
    cd /root/izin
    git config --global user.email "${EMAIL}" &> /dev/null
    git config --global user.name "${USER}" &> /dev/null
    rm -rf .git &> /dev/null
    git init &> /dev/null
    git add . &> /dev/null
    git commit -m m &> /dev/null
    git branch -M main &> /dev/null
    git remote add origin https://github.com/freetunnel/izin
    git push -f https://${TOKEN}@github.com/freetunnel/izin.git &> /dev/null
    rm -rf /root/izin
    clear
    sleep 1
    echo "  Renew IP Address..."
    sleep 1
    echo "  Processing..."
    sleep 1
    echo "  Done!"
    sleep 1
    clear
TEXT2="
<code>───────────────────────────</code>
<code>    SUCCES RENEW  IP VPS</code>
<code>───────────────────────────</code>
USERNAME       :<code> $name</code>
IP Address     :<code> $ipdel</code>
Expired On     :<code> $exp4</code>
<code>───────────────────────────</code>
"
curl -s --max-time $TIMES -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT1&parse_mode=html" $URL >/dev/null
    echo ""
    echo -e "\033[96m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo -e "          \e[1;97mSuccesfully Renew The IP Address${NC}"
    echo -e "\033[96m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"

   echo ""
    echo -e "  ${YELL}Username${NC}   : $name"
    echo -e "  ${YELL}IP Address${NC} : $ipdel"
    echo -e "  ${YELL}Expired On${NC} : $exp4"
    echo ""    
    echo -e "\033[96m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"


read -n 1 -s -r -p "Press any key to back on menu"
menu
}

clear

echo -e "\033[96m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "  [ REGISTER IP MENU ]${NC}"
echo -e "   NAME RESELLER : $reseller "
echo -e "   SELLER STATUS : $AKTIF "
echo -e "\033[96m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e ""
echo -e "  ${grenbo}[1]$NC  ${YELL}Add IP VPS"$NC     
echo -e "  ${grenbo}[2]$NC  ${YELL}Renew IP VPS"$NC
echo -e "  ${grenbo}[3]$NC  ${YELL}EXIT ADD IP VPS"$NC
echo -e ""
echo -e "\033[96m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
read -p "  Please Input Menu Number : " menu
case $menu in
1 | 01)
clear
add-ip
;;
2 | 02)
clear
renew-ip
;;
3 | 03)
clear
exit
;;

4 | 04)
clear
exit
;;

*)
echo "Please Input An Correct Menu !"
sleep 1
menu
;;
esac