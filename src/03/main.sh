#!/bin/bash

arr=("$@") 
function create_colors {
    COLORS=( "default" "white" "red" "green" "blue" "purple" "black")
            #  default     white       red         green       blue        purple      black
    BGCOLOR=( "\033[49m" "\033[107m" "\033[101m" "\033[102m" "\033[104m" "\033[105m" "\033[40m" )
                #  default      white        red          green        blue         purple       black
    TEXT_COLOR=( "\033[0;39m" "\033[1;97m" "\033[1;91m" "\033[1;92m" "\033[1;94m" "\033[1;95m" "\033[30m" )
        # Сброс цвета
    RESET="\033[0m"
}
create_colors

CLR1=${BGCOLOR[${1}]}${TEXT_COLOR[${2}]}
CLR2=${BGCOLOR[${3}]}${TEXT_COLOR[${4}]}
 
. ./error.sh
 
exit 0