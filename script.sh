#!/bin/bash

plain='\033[0m'

#စာလုံးအရောင်များ(Server Message)
red='\e[31m'    #အနီရောင်
yellow='\e[33m' #အဝါရောင်
gray='\e[90m'   #မီးခိုးရောင်
green='\e[92m'  #အစိမ်းရောင်
blue='\e[94m'   #အပြာရောင်
magenta='\e[95m'#ပန်းခရမ်းရောင်
cyan='\e[96m'   #စိမ်းပြာရောင်
none='\e[0m'    #အရောင်မရှိ

#Username နှင့် Password ပြောင်းရန်
username="m2mod773"
password="m2hmobile773"

#SSH USER LIMIT သတ်မှတ်ရန်
sshlimiter="300"

#ရက်ကန့်သက်ရန်(Qwiklab အတွက်မို့ 2-DAY ပုံသေထားရပါသည်)
dias="2"

#💠 Server Message ပြင်ရန်💠
#Server-message အရွယ်အစား သတ်မှတ်ချက်
# h6 သည် = စာလုံးအသေး ဖြစ်သည်
# h4 သည် = စာလုံးအလတ် ဖြစ်သည်
# h3 သည် = စာလုံးအကြီး  ဖြစ်သည်
servermessage="<h3><font color='red'>
⚡⚡✩░▒▓▆▅▃▂▁𝐌𝟐𝐌𝐨𝐝▁▂▃▅▆▓▒░✩⚡⚡
</font></h3>
<h4><font color='cyan'>
GCP SERVER BY ꧁༒☬͓̽K͓͓̽̽o͓̽ ͓̽M͓͓̽̽i͓͓̽̽n͓̽ ͓̽H͓͓̽̽t͓͓̽̽e͓͓̽̽t͓̽☬༒꧂
</font></h4>
<h3><font color='red'>
⚡⚡✩░▒▓▆▅▃▂▁𝐌𝟐𝐌𝐨𝐝▁▂▃▅▆▓▒░✩⚡⚡
</font></h3>"
#End
#ဒီအောက်က စာတွေပြင်ရန်မလိုပါ🌺
[[ $EUID -ne 0 ]] && echo -e "${red}Error: ${plain} You must use root user to run this script!\n" && exit 1

sed -i 's/#\?AllowTcpForwarding .*/AllowTcpForwarding yes/' /etc/ssh/sshd_config && sed -i 's/#\?PasswordAuthentication .*/PasswordAuthentication yes/' /etc/ssh/sshd_config && sed -i 's/#\?Banner .*/Banner \/etc\/ssh\/gcp_404/' /etc/ssh/sshd_config && /etc/init.d/ssh restart;
echo "$servermessage" | tee /etc/ssh/gcp_404 >/dev/null
final=$(date "+%Y-%m-%d" -d "+$dias days")
gui=$(date "+%d/%m/%Y" -d "+$dias days")
pass=$(perl -e 'print crypt($ARGV[0], "password")' $password)
useradd -e $final -M -s /bin/false -p $pass $username >/dev/null
echo "$password" >/etc/$username
echo "$username:$password" | chpasswd
echo "$username $sshlimiter" >>/root/usuarios.db
IP=$(wget -qO- ipv4.icanhazip.com)
echo ""
echo -e "\033[1;32m===================================="
echo -e "\033[1;32m ⚡⚡☄꧁༒☬͓̽K͓͓̽̽o͓̽ ͓̽M͓͓̽̽i͓͓̽̽n͓̽ ͓̽H͓͓̽̽t͓͓̽̽e͓͓̽̽t͓̽☬༒꧂☄⚡⚡" 
echo -e "\033[1;32m===================================="
echo ""
echo -e "\033[1;37m◈─────⪧ SSH ACCOUNT ⪦─────◈"
echo ""
echo -e "\033[1;32m◈ Host / IP   :⪧  \033[1;31m$IP"
echo -e "\033[1;32m◈ Port        :⪧  \033[1;31m22"
echo -e "\033[1;32m◈ Username    :⪧  \033[1;31m$username"
echo -e "\033[1;32m◈ Password    :⪧  \033[1;31m$password"
echo -e "\033[1;32m◈ Login Limit :⪧  \033[1;31m$sshlimiter"
echo -e "\033[1;32m◈ Expire Date :⪧  \033[1;31m$gui"
echo ""
echo -e "\033[1;37m◈────⪧ ❚█══M2Mod══█❚ ⪦────◈"
echo ""
echo "------------------------------------"
printf "Developed the script by ❚█══M2Mod══█❚ \n"
echo "------------------------------------"
echo ""

echo -e "${yellow}▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬ ${plain}"
echo -e "${cyan}                                                                                               dddddddd
MMMMMMMM               MMMMMMMM 222222222222222    MMMMMMMM               MMMMMMMM                             d::::::d
M:::::::M             M:::::::M2:::::::::::::::22  M:::::::M             M:::::::M                             d::::::d
M::::::::M           M::::::::M2::::::222222:::::2 M::::::::M           M::::::::M                             d::::::d
M:::::::::M         M:::::::::M2222222     2:::::2 M:::::::::M         M:::::::::M                             d:::::d 
M::::::::::M       M::::::::::M            2:::::2 M::::::::::M       M::::::::::M   ooooooooooo       ddddddddd:::::d 
M:::::::::::M     M:::::::::::M            2:::::2 M:::::::::::M     M:::::::::::M oo:::::::::::oo   dd::::::::::::::d 
M:::::::M::::M   M::::M:::::::M         2222::::2  M:::::::M::::M   M::::M:::::::Mo:::::::::::::::o d::::::::::::::::d 
M::::::M M::::M M::::M M::::::M    22222::::::22   M::::::M M::::M M::::M M::::::Mo:::::ooooo:::::od:::::::ddddd:::::d 
M::::::M  M::::M::::M  M::::::M  22::::::::222     M::::::M  M::::M::::M  M::::::Mo::::o     o::::od::::::d    d:::::d 
M::::::M   M:::::::M   M::::::M 2:::::22222        M::::::M   M:::::::M   M::::::Mo::::o     o::::od:::::d     d:::::d 
M::::::M    M:::::M    M::::::M2:::::2             M::::::M    M:::::M    M::::::Mo::::o     o::::od:::::d     d:::::d 
M::::::M     MMMMM     M::::::M2:::::2             M::::::M     MMMMM     M::::::Mo::::o     o::::od:::::d     d:::::d 
M::::::M               M::::::M2:::::2       222222M::::::M               M::::::Mo:::::ooooo:::::od::::::ddddd::::::dd
M::::::M               M::::::M2::::::2222222:::::2M::::::M               M::::::Mo:::::::::::::::o d:::::::::::::::::d
M::::::M               M::::::M2::::::::::::::::::2M::::::M               M::::::M oo:::::::::::oo   d:::::::::ddd::::d
MMMMMMMM               MMMMMMMM22222222222222222222MMMMMMMM               MMMMMMMM   ooooooooooo      ddddddddd   ddddd
${plain}"
echo -e "${green}Contact the developer https://t.me/m2hmobile for more information              ${plain}"
echo -e "${yellow}▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬ ${plain}"

echo -e "${cyan}i am ❚█══M2Mod══█❚ 😎 ${plain}"
