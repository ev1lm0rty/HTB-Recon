#!/bin/bash

num=$#
ip=$1
level=$2
url=http://$ip
dir=$(pwd)

function recon()
{
	level=$1
	if(($level == 1)); then
	echo -e "\n\nStarting nmap scan of $ip \n"
	nmap -sC -sV -oA nmap_scan $ip && echo "Nmap Done..File saved at $dir"

	echo -e "\n\nStarting directory scan on $url \n"
	gobuster -u $url -w /usr/share/dirb/wordlists/common.txt -x php,html,txt -o dir_scan.txt && echo "Dir Scan Done saved as ${dir}/dir_scan.txt"
	
	else
	echo -e "\n\nStarting nmap scan of level 2 of $ip \n"
	nmap --version

	echo -e "\n\nStarting directory scan of level 2 of $url \n"
	gobuster -u $url -w /usr/share/dirbuster/wordlists/directory-list-lowercase-2.3-medium.txt -x php,html,txt -o dir_scan_level_2.txt && echo "DirScan saved at $dir"
	fi
}


if ((num < 2 || num > 2)); then
echo -e "\n\nUsage: ./recon <ip-address> <level> \n"       
exit

else

recon $level

fi
