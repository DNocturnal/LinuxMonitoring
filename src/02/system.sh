 #!/bin/bash   

    echo 'HOSTNAME = ' $HOSTNAME

    echo 'TIMEZONE = ' $(timedatectl status | awk ' /zone/ {print $3} ')

 	echo 'USER = ' $USER
 	echo 'OS = ' $(cat /etc/issue)
	echo 'DATE = ' $(date +%c)
 	echo 'UPTIME = ' $(uptime -p)
	echo 'UPTIME_SEC = ' $(cat /proc/uptime | awk '{print $1}')
#IP ADD
	echo 'IP = ' $(ifconfig enp0s3 | awk ' /inet / {print $2}')
 	echo 'MASK = ' $(ifconfig enp0s3 | awk '/ netmask/ {print $4}' )
 	echo 'GATEWAY = ' $(ip r | grep default)
# ./RAM	
 	echo 'RAM_TOTAL = ' $(free  | awk ' /Mem/ {print $2 / 1024 / 1024}') Gb
 	echo 'RAM_USED = ' $(free  | awk ' /Mem/ {print $3 / 1024 / 1024}') Gb
 	echo 'RAM_FREE = ' $(free  | awk ' /Mem/ {print $4 /1024 /1024}') Gb

# ./SPACE	
 	echo 'SPACE_ROOT = ' $(df  | awk ' /sd/ {print $3 / 1024 }') Mb 
 	echo 'SPACE_ROOT_USED = ' $(df | awk ' /sd/ {print $4 / 1024 }') Mb
 	echo 'SPACE_ROOT_FREE = ' $(df | awk ' /sd/ {print $5 / 1024}') Mb
