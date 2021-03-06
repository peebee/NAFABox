################################################
# Under GPL license
#     https://www.gnu.org/licenses/gpl.html
# Authors:	Sébasien Durand
# 			
# On Sept 05 2017
# V0.1
################################################
#!/bin/bash -i
######
# Recherche du répertoire ConfigTinker
######
if [[ -z "$nafabox_path" ]]
then
	echo "Run first Pre_Install.sh and reload Terminal"
	exit
fi
dirinstall=${nafabox_path}

figlet -k Install GPSD
echo "================================================="
echo "================================================="

######
# Installation des pré-requis
######
######
# détection de l'architecture
######
source ${dirinstall}/proctype.sh
######
# basic update
######
sudo apt-get update
######
# Installation du programme : GPSD
######
sudo apt-get -y install gpsd gpsd-clients python-gps

