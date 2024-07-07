#!/usr/bin/bash
error() {
	echo "$*" >&2
	exit 1
}
read -p "Enter your password " password 
password=$1
#this is a way of inputing an empty variable in bash

if (( ${#password} < 10 )); then
	error "Too short"
elif [[ $password != *[[:digit:]]* ]]; then
	error "Does not contain a digit"
elif [[ $password != *[[:lower:]]* ]]; then 
	error "Password does not contain a lower case letter"
elif [[ $password != *[[:upper:]]* ]]; then
	error "Password does not contain an upper case letter"


fi



