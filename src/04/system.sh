#!/bin/bash   

if  ! [ -z "$column1_background" ]; then 
   echo 'Column 1 background = ' $column1_background "(${COLORS[${column1_background}]})"
else 
    column1_background=2
   echo 'Column 1 background = default' "(${COLORS[${column1_background}]})" 
fi
if ! [ -z "$column1_font_color" ]; then 
    echo 'Column 1 font color = ' $column1_font_color "(${COLORS[${column1_font_color}]})"
else
    column1_font_color=5
   echo 'Column 1 font color = default' "(${COLORS[${column1_font_color}]})" 
fi
if ! [ -z "$column2_background" ]; then
    echo 'Column 2 background = ' $column2_background "(${COLORS[${column2_background}]})"
else
    column2_background=6
    echo 'Column 2 background = default' "(${COLORS[${column2_background}]})" 
fi 
if ! [ -z "$column2_font_color" ]; then
    echo 'Column 2 font color = ' $column2_font_color "(${COLORS[${column2_font_color}]})"
else
    column2_font_color=1
    echo 'Column 2 font color = default' "(${COLORS[${column2_font_color}]})" 
fi

echo -e ${BGCOLOR[${column1_background}]}${TEXT_COLOR[${column1_font_color}]}"HOSTNAME = "${RESET} ${BGCOLOR[${column2_background}]}${TEXT_COLOR[${column2_font_color}]}$(hostname)${RESET}
echo -e ${BGCOLOR[${column1_background}]}${TEXT_COLOR[${column1_font_color}]}"TIMEZONE = "${RESET} ${BGCOLOR[${column2_background}]}${TEXT_COLOR[${column2_font_color}]}$(timedatectl status | awk ' /zone/ {print $3 $4 $5}')${RESET}
echo -e ${BGCOLOR[${column1_background}]}${TEXT_COLOR[${column1_font_color}]}"USER = "${RESET} ${BGCOLOR[${column2_background}]}${TEXT_COLOR[${column2_font_color}]}$(whoami)${RESET}
echo -e ${BGCOLOR[${column1_background}]}${TEXT_COLOR[${column1_font_color}]}"OS = "${RESET} ${BGCOLOR[${column2_background}]}${TEXT_COLOR[${column2_font_color}]}$(cat /etc/issue | awk '{print $1,$2,$3}')${RESET}
echo -e ${BGCOLOR[${column1_background}]}${TEXT_COLOR[${column1_font_color}]}"DATE = "${RESET} ${BGCOLOR[${column2_background}]}${TEXT_COLOR[${column2_font_color}]}$(date +"%d %B %Y %T")${RESET}
echo -e ${BGCOLOR[${column1_background}]}${TEXT_COLOR[${column1_font_color}]}"UPTIME = "${RESET} ${BGCOLOR[${column2_background}]}${TEXT_COLOR[${column2_font_color}]}$(uptime | awk '/up/ {print $3}')${RESET}
echo -e ${BGCOLOR[${column1_background}]}${TEXT_COLOR[${column1_font_color}]}"UPTIME_SEC = "${RESET} ${BGCOLOR[${column2_background}]}${TEXT_COLOR[${column2_font_color}]}$(awk '{print $1}' /proc/uptime)${RESET}
echo -e ${BGCOLOR[${column1_background}]}${TEXT_COLOR[${column1_font_color}]}"IP = "${RESET} ${BGCOLOR[${column2_background}]}${TEXT_COLOR[${column2_font_color}]}$(ifconfig enp0s3 | awk '/ inet / {print $2}')${RESET}
echo -e ${BGCOLOR[${column1_background}]}${TEXT_COLOR[${column1_font_color}]}"MASK = "${RESET} ${BGCOLOR[${column2_background}]}${TEXT_COLOR[${column2_font_color}]}$(ifconfig enp0s3 | awk '/ netmask/ {print $4}')${RESET}
echo -e ${BGCOLOR[${column1_background}]}${TEXT_COLOR[${column1_font_color}]}"GATEWAY = "${RESET} ${BGCOLOR[${column2_background}]}${TEXT_COLOR[${column2_font_color}]}$(ip route | awk '/default/ {print $3}')${RESET}
echo -e ${BGCOLOR[${column1_background}]}${TEXT_COLOR[${column1_font_color}]}"RAM_TOTAL = "${RESET} ${BGCOLOR[${column2_background}]}${TEXT_COLOR[${column2_font_color}]}$(free | awk '/Mem:/ {print $2 /1024 /1024}')${RESET}
echo -e ${BGCOLOR[${column1_background}]}${TEXT_COLOR[${column1_font_color}]}"RAM_USED = "${RESET} ${BGCOLOR[${column2_background}]}${TEXT_COLOR[${column2_font_color}]}$(free | awk '/Mem:/ {print $3 /1024 /1024}')${RESET}
echo -e ${BGCOLOR[${column1_background}]}${TEXT_COLOR[${column1_font_color}]}"RAM_FREE = "${RESET} ${BGCOLOR[${column2_background}]}${TEXT_COLOR[${column2_font_color}]}$(free | awk '/Mem:/ {print  $4 /1024 /1024}')${RESET}
echo -e ${BGCOLOR[${column1_background}]}${TEXT_COLOR[${column1_font_color}]}"SPACE ROOT = "${RESET} ${BGCOLOR[${column2_background}]}${TEXT_COLOR[${column2_font_color}]}$(df -BM | awk '/sd/ {print $2}')${RESET}
echo -e ${BGCOLOR[${column1_background}]}${TEXT_COLOR[${column1_font_color}]}"SPACE_ROOT_USED = "${RESET} ${BGCOLOR[${column2_background}]}${TEXT_COLOR[${column2_font_color}]}$(df -BM | awk '/sd/ {print $3}')${RESET}
echo -e ${BGCOLOR[${column1_background}]}${TEXT_COLOR[${column1_font_color}]}"SPACE_ROOT_FREE = "${RESET} ${BGCOLOR[${column2_background}]}${TEXT_COLOR[${column2_font_color}]}$(df -BM | awk '/sd/ {print $4}')${RESET}
echo

exit 0
