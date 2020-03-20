#!/bin/bash -x
#Problem Statement : User Registration Problem.
#Discription : User Registration System needs to ensure all validations are in place during the User Entry.
#Author : Kunal Jadhav
#Date : 17 March 2020

function validFirstName() {
	read -p "Enter valid first name: " firstName
	pattern=^[A-Z][a-z]{2}[a-z]*$
	if [[ $firstName =~ $pattern ]]
	 then
		echo "valid first name"
	 else
		echo "first name is not valid"
		validFirstName
	fi
}
function validLastName() {
   read -p "Enter valid last name: " lastName
   pattern=^[A-Z][a-z]{2}[a-z]*$
   if [[ $lastName =~ $pattern ]]
    then
      echo "valid last name"
    else
		echo "last name is not valid"
      validLastName
   fi
}
function validEmail() {
	read -p "Enter valid Email Address: " email
	pattern="^[a-z][a-z0-9]*[.+-]?[a-z0-9]+[@]{1}[a-z0-9]+[.]{1}[a-z]{2,3}([.]{1}[a-z]{2,3})?$"
	if [[ $email =~ $pattern ]]
	 then
		echo "Email is valid"
	 else
		echo "Email is not valid"
		validEmail
	fi
}
validFirstName
validLastName
validEmail
