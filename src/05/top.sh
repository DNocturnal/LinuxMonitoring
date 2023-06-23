#!/bin/bash

# 2>/dev/null не выводит возможные ошибки вида permission denied 
echo 'Топ 10 файлов с самым большим весом в порядке убывания (путь, размер и тип): ' 
p1=$( find $1 -type f -exec du -ch {} + 2>/dev/null | sort -hr | wc -l  )
if [ $p1 -gt 10 ]; then
	p1=10; 
fi
for (( i=1; i <= p1; i++ ))
do
	echo "$i - $( find $1 -type f -exec du -ch {} + 2>/dev/null | sort -hr | sed -n "$i"p | awk '{print $2,"-", $1"B"}' ), $( find $1 -type f -exec du -ch {} + 2>/dev/null | sort -hr | awk -F. '{print $NF}' |  sed -n "$i"p )" 
done
echo

echo "Топ 10 исполняемых файлов с самым большим весом в порядке убывания (путь, размер и хеш):"
p2=$(find $1 -type f -perm /001 -ls 2>/dev/null | wc -l)
if [ $p2 -gt 10 ]; then
	p2=10; 
fi
for (( i=1; i <= "$p2"; i++ ))
do
# -perm /001 ищет файлы с правами rwx , rx , wx , x
	tmp=$( find $1 -type f -perm /001 -ls 2>/dev/null | sort -hr | sed -n "$i"p | awk '{print $11}')
echo "$i - $(find $1 -type f -perm /001 -ls  2>/dev/null | sed -n "$i"p | awk '{print $11,"-", $1/1024"KB"}' | sort -hr ), $( md5sum $tmp 2>/dev/null | awk '{print $1}')"
done
echo

