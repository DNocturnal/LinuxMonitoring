#!/bin/bash
    P=$( cat /proc/uptime | awk '{print $1}')
    echo 'Общее число папок, включая вложенные:' $(sudo find $1 -type d | wc -l)
    echo
    echo 'Топ 5 папок с самым большим весом в порядке убывания (путь и размер):' 
    sudo du --max-depth=1 $1  -h | sort -hr | head -n 5 | awk '{print NR, "-", $2, $1"B"}'
    echo
    echo 'Общее число файлов:' $(sudo find $1 -type f | wc -l)
    echo
    echo 'Число конфигурационных файлов: '
    echo 'Configuration files = ' $(sudo find $1 -name "*.conf" | wc -l)
    echo 'Text files = ' $(sudo find $1 -name "*.txt" | wc -l)
    echo 'Executable files = ' $exe_file_num
    echo 'Log files = ' $(sudo find $1 -name "*.log" | wc -l)
    echo 'Archive files = ' $arch_file_num
    echo 'Symbolic links = ' $(sudo find -L $1 -xtype l | wc -l)
    echo
    . ./top.sh 
    T=$(cat /proc/uptime | awk '{print $1}')
    echo 'Время выполнения скрипта:'  0"$(echo "$T-$P" | bc -l)" sec