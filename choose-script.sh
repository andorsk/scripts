#!/bin/bash
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
blue=`tput setaf 4`
    
PARENTPATH=$(dirname "${BASH_SOURCE[0]}")
echo "Running scripts from $PARENTPATH"

FARRAY=(${PARENTPATH}/*.sh)

COUNTER=0
for f in ${FARRAY[@]}; do 
    printf "\e[48;5;161m $COUNTER : $(basename $f) \e[0m \n"
    COUNTER=$[$COUNTER +1]
done

echo "Which script to you want to envoke. Enter Numeric Value"
read CHOICE

echo "Add any extra arguments here or press enter to skip"
read EXTRAARGS

if [[  -z $EXTRAARGS ]];
    then
    echo "No extra arguments chosen. Continuing..." 
fi

source ${FARRAY[$CHOICE]} $EXTRAARGS

