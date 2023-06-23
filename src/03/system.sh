#!/bin/bash   

echo -e ${CLR1}"HOSTNAME = "${RESET} ${CLR2}$(hostname)${RESET}
echo -e ${CLR1}"TIMEZONE = "${RESET} ${CLR2}$(timedatectl status | awk ' /zone/ {print $3 $4 $5}')${RESET}
echo -e ${CLR1}"USER = "${RESET} ${CLR2}$(whoami)${RESET}
echo -e ${CLR1}"OS = "${RESET} ${CLR2}$(cat /etc/issue | awk '{print $1,$2,$3}')${RESET}
echo -e ${CLR1}"DATE = "${RESET} ${CLR2}$(date +"%d %B %Y %T")${RESET}
echo -e ${CLR1}"UPTIME = "${RESET} ${CLR2}$(uptime | awk '/up/ {print $3}')${RESET}
echo -e ${CLR1}"UPTIME_SEC = "${RESET} ${CLR2}$(awk '{print $1}' /proc/uptime)${RESET}
echo -e ${CLR1}"IP = "${RESET} ${CLR2}$(ifconfig enp0s3 | awk '/ inet / {print $2}')${RESET}
echo -e ${CLR1}"MASK = "${RESET} ${CLR2}$(ifconfig enp0s3 | awk '/ netmask/ {print $4}')${RESET}
echo -e ${CLR1}"GATEWAY = "${RESET} ${CLR2}$(ip route | awk '/default/ {print $3}')${RESET}
echo -e ${CLR1}"RAM_TOTAL = "${RESET} ${CLR2}$(free | awk '/Mem:/ {print $2 /1024 /1024}')${RESET}
echo -e ${CLR1}"RAM_USED = "${RESET} ${CLR2}$(free | awk '/Mem:/ {print $3 /1024 /1024}')${RESET}
echo -e ${CLR1}"RAM_FREE = "${RESET} ${CLR2}$(free | awk '/Mem:/ {print  $4 /1024 /1024}')${RESET}
echo -e ${CLR1}"SPACE ROOT = "${RESET} ${CLR2}$(df -BM | awk '/sd/ {print $2}')${RESET}
echo -e ${CLR1}"SPACE_ROOT_USED = "${RESET} ${CLR2}$(df -BM | awk '/sd/ {print $3}')${RESET}
echo -e ${CLR1}"SPACE_ROOT_FREE = "${RESET} ${CLR2}$(df -BM | awk '/sd/ {print $4}')${RESET}

exit 0
