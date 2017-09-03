#!/bin/bash
clear

dologin(){

uname="admin"
pass="123"

if [ $uname == "$1" ] && [ $pass == "$2" ]
then
	./dashboard.sh $1
else
	echo "invalid user name or password"
	exit
fi

}


echo "***************************Login Page********************************"



read -p "Enter user name :" ename
read -p "Enter password :" epass


dologin $ename $epass


