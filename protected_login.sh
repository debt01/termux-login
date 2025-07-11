#!/bin/bash
# Copyright (C) 2024 [Linux HUnter420] - All Rights Reserved
# Unauthorized copying/modification prohibited
# License: See LICENSE.md file
# Copyright (C) 2025 [debt01] - All Rights Reserved
# Unauthorized copying/modification prohibited
# TermuX-Custom Login System
# No sound version

# Colors
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
NC='\033[0m'

# Get credentials
clear
bash banner.sh
echo

read -p $'\e[1;32mEnter \033[33mUsername \033[37mfor \033[32mLogin:\e[0m ' username                
read -p $'\e[1;32mEnter \033[33mPassword \033[37mfor \033[32mLogin:\e[0m ' password 
echo
read -p $'\033[1m\033[32mYour \033[0mShell \033[38;5;209mName\033[31m: \033[33m\033[1m ' names

# Install custom bashrc
cd /data/data/com.termux/files/usr/etc
rm -f motd bash.bashrc

cat <<EOF > bash.bashrc
trap '' 2
echo -e "\e[1;32m"
figlet -f slant "Welcome Back"
echo -e "\033[31m           ────────────────────────────
\033[33m               Login To Continue
\033[31m           ────────────────────────────
\e[0m"

read -p $'\e[33m\033[1m[\033[31m+\033[33m] \033[37mUsername:\033[32m ' user
read -s -p $'\e[32m\033[1m[\033[31m+\033[33m] \033[37mPassword:\033[33m ' pass

if [[ \$pass == "$password" && \$user == "$username" ]]; then
    clear
    echo -e "\033[1m\033[33m"
    figlet -f slant "Hacker"
    echo -e "\e[1m\e[32m▂▃▄▅▆▇▓▒░ \033[1mCoded By \e[33mByTE71 \e[1m\e[32m░▒▓▇▆▅▄▃▂"
    echo -e "\033[1m\033[33m]\033[31m──────────────────────────────\033[33m["
    
    PS1='\033[1m\[\e[32m\]\033[1m┌─[\[\e[37m\]\T\[\e[32m\]\033[1m]───\033[1m\e[1;98m\[[\033[1m\033[37m$names\033[32m]\033[1m\e[0;32m\033[1m──[\033[38;5;209m\#\033[32m]\n|\n\033[1m\e[0;32m\033[1m└─[\[\e[32m\]\e[1;33m\W\[\e[1m\033[32m]\033[1m──►\e[1;36m\033[1m '
else
    echo -e "\n\e[1;31mInvalid credentials!\e[0m"
    sleep 1
    cmatrix -L
fi
trap 2
EOF

echo -e "\n\033[1m\e[1;32mYour Termux is ready!"
echo -e "Please exit and restart Termux.\e[0m"
