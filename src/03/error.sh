#!/bin/bash

if [ "${#arr[@]}" -lt "4" ] || [ "${#arr[@]}" -gt "4" ]; then
    echo 'input 4 arguments!'
elif [[ "${arr[@]}" =~ [.,@$/%\&*+=-] ]]; then
    echo 'input correct arguments without ~!@#$/\%^&*,.!'
elif [ "${1}" -lt "1" ] || [ "${1}" -gt "6" ]; then  
    echo 'input correct arguments!'
elif [ "${2}" -lt "1" ] || [ "${2}" -gt "6" ]; then  
    echo 'input correct arguments!'
elif [ "${3}" -lt "1" ] || [ "${3}" -gt "6" ]; then  
    echo 'input correct arguments!'
elif [ "${4}" -lt "1" ] || [ "${4}" -gt "6" ]; then  
    echo 'input correct arguments!'
elif [ "${1}" -eq "${2}" ] || [ "${3}" -eq "${4}" ]; then 
    echo 'please choose another color, because background and font text is one color!'
else
    . ./system.sh
fi