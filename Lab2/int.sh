#!/bin/bash

#crate an array using the output of ifconfig which has the names of 
#the network interfaces in it. Use those names to exract the ip address
#of the interfaces, also using ifconfig ouput. also prase the output of 

#build interfaces array with the interface name as elements
interfaces=( $(ifconfig | grep '^[A-Za-z]'| awk '{print $1}') )

# find the ip address of the interfaces
ip0=$(ifconfig ${interfaces[0]} |sed -n '/inet addr:/s/.*addr:\([0-9.][0-9.]*\).*/\1/p')                          
ip1=$(ifconfig ${interfaces[1]} |sed -n '/inet addr:/s/.*addr:\([0-9.][0-9.]*\).*/\1/p')      

# extract the deafult gateway 
gw=$(route -n  |awk '/^0.0.0.0/{print $2}')

echo "Interface ${interfaces[0]} has ip address $ip0"
echo "Interface ${interfaces[1]} has ip address $ip1"
echo "My deafult gateway is $gw"
