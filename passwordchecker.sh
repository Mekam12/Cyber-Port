#!/usr/bin/bash
error() {
	echo "$*" >&2
	exit 1
}
read -p "Enter your password " password 



if (( ${#password} < 8 )); then
	error "Password is too short"
elif [[ $password != *[[:digit:]]* ]]; then
	error "Password does not contain a digit"
elif [[ $password != *[[:lower:]]* ]]; then 
	error "Password does not contain a lower case letter"
elif [[ $password != *[[:upper:]]* ]]; then
	error "Password does not contain an upper case letter"
elif [[ $password != *[[:special:]]* ]]; then
	error "Password does not contain a special character"

fi



