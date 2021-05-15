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
  echo "$user_name created"
}

delete_user () {
  read -p "Enter user to delete: " user_name
  while ! check_user "$user_name" ; do 
    echo "User not foudn"
    return 1
  done
  sudo userdel -r $user_name
  echo "$user_name deleted"
}

while true; do 
  clear
  echo "User anagement"
  echo "1: Create Users"
  echo "2. Delete Users"
  echo "3. Exiti"
  read -sn1 
  case "$REPLY" in 
  1) create_user;;
  2) delete_user;;
  3) exit 0;;
  esac
  read -n1 -p "Press any key "
done

