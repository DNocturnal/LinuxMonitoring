#!/bin/bash

function create_colors {
    COLORS=( "default" "white" "red" "green" "blue" "purple" "black")
    BGCOLOR=( "\033[49m" "\033[107m" "\033[101m" "\033[102m" "\033[104m" "\033[105m" "\033[40m" )
    TEXT_COLOR=( "\033[0;39m" "\033[1;97m" "\033[1;91m" "\033[1;92m" "\033[1;94m" "\033[1;95m" "\033[30m" )
    RESET="\033[0m"
}
create_colors

. ./conf.conf
. ./error.sh

exit 0
