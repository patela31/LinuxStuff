#! /bin/bash

echo "Hello worlds"

# Prompt ; 's' indicates don't echo out
if [ $# -eq 0 ] ; then
	read -p "Enter a username: "  user_name
	read -sp "Enter a password: "  user_password
	echo " "
	read -sp "Re-Enter the password: "  user_password_check
	if [ "$user_password" != "$user_password_check" ] ; then
		echo "\n${0}: Passwords do not match!!!"
		exit 1
	fi
else
	user_name="$1"
	user_password="${2:-New2Day}"
fi
echo -e "\n$user_name $user_password"
