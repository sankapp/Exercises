#!/bin/bash
clear
echo "********************** Dash Board **************************************"

dashboardOptions(){
echo "Logged as " $1
echo "1) Create Item " 
echo "2) View Item "
echo "q) Quite "

}

dashboardOptions $1

while true :
do

read -p "Enter your option :" opt

case $opt in
	1) dashboardOptions $1
	   ./create.sh $1
           dashboardOptions $1
	;;

	
	2) dashboardOptions $1
	   ./View.sh $1
	   dashboardOptions $1
	;;

	"q") exit
	     clear
	;;

	*) echo "Enter valid option"

esac

done






