
"""
===============================================================================================

Usage:
python3 recon.py [options] <ip> <level>

Options:
-k Nikto Scan
-g Gobuster Scan
-d Dirbuster Scan
-n Nmap Scan
-s SubDomain Scan

Level 1:
nmap : nmap -sC -sV 
nikto:
gobuster:
dirbuster:
subdomain:

Level 2:
nmap : nmap -sC -sV 
nikto:
gobuster:
dirbuster:
subdomain:

Level 3:
nmap : nmap -sC -sV 
nikto:
gobuster:
dirbuster:
subdomain:

Made by:

mrjoker05
https://github.com/mrjoker05

===============================================================================================
"""

import os
import os.path
from sys import argv
#from termcolor import colored

def basic ():
    print("Starting Basic Scan....\n")
    os.system('nmap -sC -sV -oA '+ filename + ip +)
    os.system('nikto -h '+ip)
    os.system('gobuster dir -u '+ url +' -w ' + wordlist + '-o dirscan')
    os.system

def medium():
    print("Starting Medium Level Scan....\n")
    os.system('nmap -')
    os.system('nikto')
    os.system('gobuster')

def intense

# Nmap Scans:

def nmap(x):
    if x == 1:
        os.system('nmap -sP -oN pingscan.txt ' + ip);
    elif x == 2:
        os.system('nmap -sC -sV -oN medium_scan.txt '+ ip);
    elif x == 3:
        os.system('sudo nmap -sS -sV -oN intense_scan.txt ' + ip '> /dev/null');
    elif x == 4:
        os.system('sudo nmap -sU -sV -oN udp_scan.txt ' + ip + ' > /dev/null');
    elif x == 5:
        os.system('sudo nmap -sS -T4 -O -sV -p- all_port_scan.txt ' + ip ' > /dev/null');

# Gobuster Scans:

def gob(y):
    if y == 1:
        os.system('gobuster dir -u http://' + ip + ' -w ' + wordlist ' -o dirscan.txt > /dev/null');
    elif y == 2:
        os.system('gobuster dir -u http://' + ip + ' -w ' + wordlist ' -o dirscan.txt > /dev/null');

# Nikto Scans:
# Sub Domain Scan:
# 
