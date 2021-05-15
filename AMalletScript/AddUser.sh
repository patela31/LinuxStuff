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


# Prompt ; 's' indicates don't echo out

check_user () {
  grep  \^${1}\: /etc/passwd && return 0
}

create_user () {
  prompt_user "Enter new user details"
  while check_user "$user_name" ; do 
	prompt_user "The username you have chosen already exists"
  done
  while [ "$user_password" != "$user_password_check" ] ; do
	prompt_user "Passwords don't match"
  done
  sudo useradd -m "$user_name"
  echo "${user_name}:"$user_password | sudo chpasswd
  echo "4user_name created"
}

