
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

def medium():
    print("Starting Medium Level Scan....\n")
    os.system('nmap -')
    os.system('nikto')
    os.system('gobuster')

def intense
