#!/bin/bash

    if ! [ $# -eq 1 ]; then
        echo "Пропиши полный путь до директории (например /var/log/)"
    elif ! [ ${1: -1} == '/' ]; then
        echo "Некорректный путь"
    elif ! [ -d "$1" ]; then
        echo "Директории не существует"
    else
        . ./system.sh
    fi

  

