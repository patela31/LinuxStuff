#! /bin/bash

prompt_user () {

	read -p "Enter a username: "  user_name
	read -sp "Enter a password: "  user_password
	echo " "
	read -sp "Re-Enter the password: "  user_password_check
	echo " "

}

echo "Hello worlds"

# Prompt ; 's' indicates don't echo out
if [ $# -eq 0 ] ; then
	prompt_user
	if [ "$user_password" != "$user_password_check" ] ; then
		echo "${0}: Passwords do not match!!!"
		prompt_user
	fi
else
	user_name="$1"
	user_password="${2:-New2Day}"
fi
echo -e "\n$user_name $user_password"
