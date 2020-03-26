#!/bin/bash -x
#Problem Statement : User Registration Problem.
#Discription : User Registration System needs to ensure all validations are in place during the User Entry.
#Author : Kunal Jadhav
#Date : 17 March 2020

patternForName="^[A-Z][a-z]{2}[a-z]*$"
patternForEmail="^[a-z][a-z0-9]*[.+-]?[a-z0-9]+[@]{1}[a-z0-9]+[.]{1}[a-z]{2,3}([.]{1}[a-z]{2,3})?$"
patternForNumber="\<^[0-9]{2}[ ][0-9]{10}\>"
patternForPassword="^[a-zA-Z0-9!@#$%^&*]*[A-Z]+[a-zA-Z0-9!@#$%^&*]*[0-9]+[a-zA-Z0-9!@#$%^&*]*$"
patternForSpecialChar="[!@#$%^&*]{1}"
function validFirstName() {
	read -p "Enter valid first name: " firstName
	if [[ $firstName =~ $patternForName ]]
	 then
		echo "valid first name"
	 else
		echo "first name is not valid"
		validFirstName
	fi
}
function validLastName() {
   read -p "Enter valid last name: " lastName
   if [[ $lastName =~ $patternForName ]]
    then
      echo "valid last name"
    else
		echo "last name is not valid"
      validLastName
   fi
}
function validEmail() {
	read -p "Enter valid Email Address: " email
	if [[ $email =~ $patternForEmail ]]
	 then
		echo "Email is valid"
	 else
		echo "Email is not valid"
		validEmail
	fi
}
function validMobileNumber() {
	read -p "Enter your mobile number with country code: " number
	if [[ $number =~ $patternForNumber ]]
	 then
		echo "Number is valid"
	 else
		echo "Number is not valid"
		validMobileNumber
	fi
}
function validPassword() {
	local LENGTH=7
	read -p "Choose Password: " password
	if [[ ${#password} -gt $LENGTH ]]
	 then
		if [[ $password =~ $patternForPassword && $password =~ $patternForSpecialChar ]]
		 then
			echo "valid password"
	 	 else
			echo "password is not valid"
			validPassword
		fi
	 else
		echo "password should contain minimum 8 characters "
		validPassword
	fi
}
validFirstName
validLastName
validEmail
validMobileNumber
validPassword
