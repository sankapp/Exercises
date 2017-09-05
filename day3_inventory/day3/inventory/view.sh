#!/bin/bash

clear
viewItem(){

read -p "Enter item no to view separate view :" ino
clear
echo "---------------------------------Item Separate View-----------------------------"
grep "^[$ino]" item.txt
echo""
echo "--------------------------------------------------------------------------------"

}
echo "*********************************View Item*************************************"

cat item.txt

viewItem
