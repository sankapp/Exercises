#!/bin/bash
clear

#cd loginfo/
#./loinfo_ss.sh

#cd ../

uname="admin"
pass="123abc"



echo "****************Ente Your User Name and Password ******************"

read -p "Enter Your User name =" ename

if [ $uname == $ename ]
then
echo "Welcome Administrator,Please Enter Your Password"
else
echo " Invalid user name "
exit
fi


read -p "Enter Your Password" epass

if [ $pass == $epass ]
then
clear

echo "*********************Thank You for providing valid user name and password*****"

else 
clear
echo " Invalid password "
fi

echo "--------------------------------------------------------------------------------"

echo "                               About You                                        "

echo "--------------------------------------------------------------------------------"

echo " This form is colecting your personal information and be suar to provide 
valid and correct information. Thank You."
echo ""
echo ""

echo "*****************************ABOUT YOU******************************************" 
read -p " Enter your first name =" fname
read -p " Enter your Last name =" lname
read -p " Enter your date of birth =" dob
read -p " Enter your NIC number =" nic
read -p " Enter your contact number=" cno
read -p " Enter your e-mail =" email


clear

date >>info.txt

echo "" >>info.txt
echo "-------------------------------------------" >> info.txt
echo "                Curriculum Vitae           " >> info.txt
echo "-------------------------------------------" >> info.txt

echo "" >> info.txt
echo "Full name is   -" $fname $lname >> info.txt
echo "Date of Birth  -" $dob >> info.txt
echo "NIC number     -" $nic >> info.txt
echo "contact number -" $cno >> info.txt
echo "E-mail         -" $email >> info.txt
echo "" >> info.txt
echo "-------------------------------------------" >> info.txt

cat info.txt

echo "**************************Thank You, You have succsessfuly added your information*****"



