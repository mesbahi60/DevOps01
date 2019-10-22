#Hoework 00 - Reza Mesbahi , Oct.16/2019
#!/bin/bash

if [[ $# -ne 1 ]]; then

	echo "Please specify an option to see specific information. Available options are -volume, -cpu, -ram and -network to see volume, cpu/core, ram and network information repectively."
	exit
elif [[ $1 == "-volumes" ]]; then	
	echo "volume information requested"
	df 
elif [[ $1 == "-cpu" ]] ; then
	echo "cpu information requested"
	sysctl -n machdep.cpu.brand_string
elif [[ $1 == "-ram" ]] ; then
	echo "ram information requested"
	sysctl hw.memsize
elif [[ $1 == "-network" ]] ; then
	echo "network information requested"
	ifconfig
elif [[ $1 == "-all" ]] ; then
	echo "all information requested"
	df 
	sysctl -n machdep.cpu.brand_string
	sysctl hw.memsize
	ifconfig
fi


