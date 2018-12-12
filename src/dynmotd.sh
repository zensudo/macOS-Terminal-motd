#!/bin/bash

#title           :dynmotd.sh
#version         :2.0
#description     :dynamical message of the day
#author		 :JSG01  
#company	 :-
#year            :2017
#notes           :-none-

#show weather
curl wttr.in/hamburg?0

#leerzeile
echo " "

#SetEscapeColorCodes
CYN='\033[0;36m'
RED='\033[0;31m'
YLW='\033[0;33m'
PUR='\033[0;35m'
GRY='\033[0;37m'
NC='\033[0m' #NoColor

#Ausgabe mit Farbe:
printf "${CYN}$(sw_vers)\n\n"

#pydf --block-size=256000000000 /Volumes/Macintosh\ HD
printf "${YLW}$(diskutil info / | grep "Total Size:" | cut -b "1-38")\n"
printf "${YLW}$(diskutil info / | grep "Volume Free Space:" | cut -b "1-38")\n"

printf "${GRY}\n"
top -l 1 -s 0 | grep "CPU usage"

#leerzeile
echo " "

printf "${PUR}$(top -l 1 -s 0 | grep PhysMem)\n\n"

printf "${YLW}$(istats cpu)\n"
printf "${YLW}$(istats fan)\n\n"

printf "${RED}$(date)\n"
printf "${GRY}"
echo "Your external IP: "; curl ipinfo.io/ip

echo " "
printf "${CYN}$(echo "***********************************************")\n"


#EndEscapeColorCode
printf "${NC}\n\n"

