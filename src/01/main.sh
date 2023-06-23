#!/bin/bash

if [[ "$1" =~ ^[a-zA-Z]+$ ]]; then
		echo $1
else
		echo 'error..'
fi
exit 0
