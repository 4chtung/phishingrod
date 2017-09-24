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


## INSTALL APACHE2
sudo apt-get install apache2 -y

## INSTALL PHP
sudo apt-get install php5 libapache2-mod-php5 -y

## INSTALL SET
git clone https://github.com/trustedsec/social-engineer-toolkit/ set/
cd set
python setup.py install


