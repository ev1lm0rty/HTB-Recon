# HTB-Recon

## About
* This script creates a multipane-multiwindow tmux session.
* Creates different panes for different tasks.
* Automatically types basic enum commands for you, just just gotta hit enter..!!!


## Requirements
* Tmux `sudo apt install tmux`
* Masscan
* Nmap
* Gobuster
* ffuf ( Install and place it in /opt )

## Usage
* ./htb-recon.sh <IP> <Name of box> <OS>
* Example: `./htb-recon.sh 10.10.10.10. ServMon Windows`
* Then attach the session by `tmux a -t htb_recon`

## What it does
* Creates a workspace in your home dir.
* Creates different folders to keep things organized.
* Creates a Notes.md file to keep your notes.
* exports the ip to a env variable so you don't have to type it again and again
  , you can access it by `echo $target`

## Contribute
* Feel free to contribute to this repo.

## Todos
* The script should send recon commands based on os type
