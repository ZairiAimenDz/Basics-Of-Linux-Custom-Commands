#!/bin/bash

# Always Start With the bin bash thing

# Simple Function : If You Write la it will execute the command in this function

function la() {
	ls -a
	# Inside here you can put any shell command you want to use for your custom command
}

# Let's Talk About Basics :
# Variables :
# To Create A Variable You Do :
function variable() { 
	tstvar="Test"  # No Space Between The Elements
	tstint=14 
	echo "$tstvar $tstint"
}

# Comparisons :
# For Numbers We (Between Brackets Are Used For Strings ) Use : -lt ( < ) , -le | -gt ( > ) , -ge | -eq ( = ) | -ne ( != )  |  And We Use Them Inside Brackets : [] 

function eqint() {
	if [ $1 -eq $2 ]; then # $1 is to choose the first argument that the user entered $2 for the second etc ..  and always leave space to the left and right inside the brackets
		echo "$1 and $2 Are Equal"
	else
		echo "$1 and $2 Aren't Equal"
	fi
}

# Use The Results Of Commands
function var1() {
	var=$(pwd) # Results of Existing Commands Can Be Used By Adding Them in $(existing command)
	echo "$var"
}

# Loops
# For Loop :
function loop() {
	for i in 1 2 3 10 ; do # We Write The Items To Go From and to
		echo "$i"	
	done
}

# While Loop :
function loop1(){
	i=0
	while [ $i -lt 10 ]; do
		let i+=1 # let is for arithmetic operations
		echo $i
	done
}	

# Until Loop
function loop2(){
	i=10
	until [ $i -lt 3 ]; do
		let i-=1
		echo $i	
	done
}


# These Are The Basics So Hope You Find them Useful
