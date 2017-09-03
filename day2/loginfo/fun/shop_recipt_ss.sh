#!/bin/bash
clear
echo "_____________________SDL FOOD MART___________________________"
echo""
echo""
read -p "Enter Customer Name =" cname
read -p "Enter Customer Contact No =" cno
echo""
echo""
echo "_____________________Recipt Details__________________________"
echo""
echo""

date >> output.txt
echo "--------------------SDL FOOD MART-----------" >> output.txt
echo "************Welcome Mr/Mrs "$cname"*********" >> output.txt
echo "Tel: " $cno >> output.txt
echo "____________________________________________" >> output.txt
echo "" >> output.txt 

read -p "number of goods =" ngood
for((i=1;i <= $ngood;i++))
{
read -p "Enter Item =" item
read -p "Enter Qntity =" qun
read -p "Enter Price =" price

total=$(($qun * $price))
 
echo $i")" $item "---" $qun "x" $price " = " $total >> output.txt
total1=$(($total1+$total))
 

} 
echo "Total Price-------------------------" $total1 >> output.txt
echo"" >> output.txt
echo "***********Thank you, Come again************" >> output.txt

clear

cat output.txt

exit
