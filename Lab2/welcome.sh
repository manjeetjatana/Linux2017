#!/bin/bash
# this script prints out a welcome message
# it demonstrates using variables 

 export MYNAME="Manjeet"
 mytitle="Supreme Commander"
 
myhostname=`hostname`
dayoftheweek=$(date +%A)
 
 echo  "Welcome to planet $myhostname, $mytitle $MYNAME!"
 echo "Today is $dayoftheweek."