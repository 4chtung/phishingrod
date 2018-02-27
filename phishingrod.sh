#!/bin/bash

#PHISHING ROD
#Written By 4chtung

# HOLY CRAP COLOUR!
ESC="\e["
RESET=$ESC"39m"

RED=$ESC"31m"
BLUE=$ESC"94m"
GREEN=$ESC"32m"

BGRED=$ESC"101m"$ESC"30m"
BGRESET=$ESC"49m"$ESC"39m"

# Other Variables


#----------------------------

function fancyintro {

echo
cat << "EOF"

██████╗ ██╗  ██╗██╗███████╗██╗  ██╗██╗███╗   ██╗ ██████╗     ██████╗  ██████╗ ██████╗            ,-.
██╔══██╗██║  ██║██║██╔════╝██║  ██║██║████╗  ██║██╔════╝     ██╔══██╗██╔═══██╗██╔══██╗       O  /   `.
██████╔╝███████║██║███████╗███████║██║██╔██╗ ██║██║  ███╗    ██████╔╝██║   ██║██║  ██║       <\/      `.
██╔═══╝ ██╔══██║██║╚════██║██╔══██║██║██║╚██╗██║██║   ██║    ██╔══██╗██║   ██║██║  ██║        |*        `.
██║     ██║  ██║██║███████║██║  ██║██║██║ ╚████║╚██████╔╝    ██║  ██║╚██████╔╝██████╔╝       / \          `.
╚═╝     ╚═╝  ╚═╝╚═╝╚══════╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝     ╚═╝  ╚═╝ ╚═════╝ ╚═════╝       /  /            `<PASSWORD>

EOF
echo "Phishing Rod --- 4chtung (@FriedSec)"

echo
}


fancyintro

## CHECK FOR ROOT ACCESS

if (( $EUID != 0 )); then
    echo -e "${RED}ERROR!!! -- YOU ARE NOT ROOT! -- ERROR!!!${RESET}"
    echo -e "${RED}  PLEASE RUN AS ROOT!${RESET}"
    echo
    exit
fi

## UPDATE APT FILES

apt-get update

## INSTALL APACHE2
apt-get install apache2 -y

## INSTALL PHP
apt-get install php libapache2-mod-php -y

## Install Site Template to Apache Folder
cp site/* /var/www/html/
