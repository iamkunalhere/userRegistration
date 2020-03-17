#!/bin/bash -x
#Problem Statement : User Registration Problem.
#Discription : User Registration System needs to ensure all validations are in place during the User Entry.
#Author : Kunal Jadhav
#Date : 17 March 2020

function validFirstName() {
	read -p "Enter valid first name: " firstName
	pattern=^[A-Z]{1}[a-z]{2}[a-z]?
	if [[ $firstName =~ $pattern ]]
	 then
		echo "validated first name"
	 else
		validFirstName
	fi
}
validFirstName
