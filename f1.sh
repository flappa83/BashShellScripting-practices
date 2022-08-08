#!/bin/bash
#user management script

#.....................................................................................................

#ken's task
#this script is a modification of your script, it can create users, detect duplicate users and give the option of deleting a user

read -p 'Enter your username?: ' user
if [ -d  /home/$user ]
then
echo 'you cannot duplicate users'
read -p 'user already exist, do you want to delete user? reply with yes/no: ' response

	if [ $response == yes ]
	then
	sudo userdel $user
	echo 'user deleted'
	elif [ $response == no ]
	then
	echo 'user not deleted'
	else
	echo 'wrong option passed'
	fi
	
else
sudo useradd $user
echo user $user has been created successfully
fi

