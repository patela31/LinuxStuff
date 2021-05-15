#! /bin/bash

prompt_user () {
	message=${1:-"Enter account details"}
	echo "$message"
	read -p "Enter a username: "  user_name
	read -sp "Enter a password: "  user_password
	echo " "
	read -sp "Re-Enter the password: "  user_password_check
	echo " "

}

echo "Hello worlds"

# Prompt ; 's' indicates don't echo out

check_user () {
  grep -q \^${1}\: /etc/passwd && return 0
}

if [ $# -eq 0 ] ; then
	prompt_user
	if [ "$user_password" != "$user_password_check" ] ; then
		prompt_user "Passwords don't match"
	fi
else
	user_name="$1"
	user_password="${2:-New2Day}"
fi

if check_user "$user_name" ; then 
	prompt_user "The username you have chosen already exists"
fi
echo -e "\n$user_name $user_password"
