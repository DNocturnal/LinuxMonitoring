#!/bin/bash

bash system.sh
echo 'Хотите записать полученную информацию в файл? Y/N'
read answer
if [ "$answer" = Y ] || [ "$answer" = y ] ; then
	bash system.sh >> $(date +"%d_%m_%y_%H_%M_%S.status")
elif [ "$answer" = N ] || [ "$answer" = n ] ; then 
 	echo 'Ок, данные не сохранены'
else 
 	echo "Это не Y/N. Ну, нет, так нет.." 
fi

exit 0
