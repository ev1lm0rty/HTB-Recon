#!/bin/bash

target=$1
name=$2
box=$3

if (($#==2));
then

  ## Create directory
  mkdir -p ~/HackSpace/$name
  mkdir -p ~/HackSpace/$name/recon
  mkdir -p ~/HackSpace/$name/loot
  mkdir -p ~/HackSpace/$name/exploits

  ## Create session
  cd ~/HackSpace/$name
  export target
  export box
  export name

  ## Create Tmux Session
  tmux new -s htb_recon -d
  tmux rename-window -t htb_recon VPN
  tmux split-window -v -t VPN
  tmux split-window -h -t htb_recon:VPN.0
  tmux new-window -d -t htb_recon -n NOTES
  tmux new-window -d -t htb_recon -n DASH
  tmux split-window -h -t htb_recon:DASH.0
  tmux split-window -v -t htb_recon:DASH.1
  tmux split-window -v -t htb_recon:DASH.0

  ## Running Commands
  tmux send-keys -t htb_recon:VPN.0 'sudo openvpn' 

  tmux send-keys -t htb_recon:DASH.0 'nmap -sC -sV -oN recon/initial_nmap.txt -v -Pn $target' 
  tmux send-keys -t htb_recon:DASH.1 'sudo masscan -p1-65535 -e tun0 -oL recon/allports.txt --rate=1000 -vv -Pn $target'
  tmux send-keys -t htb_recon:DASH.2 'gobuster dir -u http://$target -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -o recon/dirscan.txt'
  tmux send-keys -t htb_recon:DASH.2 '/opt/ffuf -w /usr/share/wordlists/dirb/big.txt -u http://$target/FUZZ | tee recon/ffuf.txt' 

  tmux send-keys -t htb_recon:NOTES 'echo "# Info" >> Notes.md' 
  tmux send-keys -t htb_recon:NOTES 'echo "* Name: $name" >> Notes.md' 
  tmux send-keys -t htb_recon:NOTES 'echo "* IP: $target" >> Notes.md' 
  tmux send-keys -t htb_recon:NOTES 'echo "* Box: $box" >> Notes.md' 
  tmux send-keys -t htb_recon:NOTES 'echo "* Level: " >> Notes.md' 
  tmux send-keys -t htb_recon:NOTES 'vi Notes.md'

else
  echo "Usage: ./htb-recon.sh <IP> <Name_of_Machine> <OS> "
  echo "Example: ./workspace.sh 10.10.10.180 ServMon Windows"

fi
