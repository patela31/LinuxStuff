#! /bin/bash

echo "Hello worlds"

# Prompt ; 's' indicates don't echo out
if [ $# -eq 0 ] ; then
        prompt_user
	if [ "$user_password" != "$user_password_check" ] ; then
		echo "\n${0}: Passwords do not match!!!"
		exit 1
	fi
else
	user_name="$1"
	user_password="${2:-New2Day}"
fi
echo -e "\n$user_name $user_password"
