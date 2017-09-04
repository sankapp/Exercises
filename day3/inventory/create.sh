#!/bin/bash
clear
echo "**********************************Create Page**********************************"

createItem(){

read -p "Enter Item Name :" iname
read -p "Enter Item Category :" icat
read -p "Enter Item Shop :" ishop
read -p "Enter Item Price :" iprice

if grep "^[1]" item.txt
then
	no=$(grep -c "^[0-9]*" item.txt)
	((no++))
	echo $no"). Item Name :-"$iname "-----Category :-"$icat "-----Available shop :-"$ishop "-----Price :-"$iprice >> item.txt
	
else
	echo "1). Item Name :-"$iname "-----Category :-"$icat "-----Available shop :-"$ishop "-----Price :-"$iprice >> item.txt

fi

}

createItem
