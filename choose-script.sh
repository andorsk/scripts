#!/bin/bash
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
blue=`tput setaf 4`

if [[ ! -z $1  && $1 = "help" ]]; then 
    echo "A script chooser. Simply run ./choose-script.sh and it will read off all the other scripts in the folder and then provide an interface to interact wit the scripts. For help commands, type in the number corresponding with the command and then 'help' and you will get help commands related to usage. Extra args are processed as a string. WILL AUTOMATICALLY RELOAD BASH_PROFILE"
    printf "\e[0;35mUSAGE: ./choose-script.sh. 1. Enum Choice  2. Extra Args  \e[0m\n"
    exit
fi

PARENTPATH=$(dirname "${BASH_SOURCE[0]}")
echo "Running scripts from $PARENTPATH"

FARRAY=(${PARENTPATH}/*.sh)

COUNTER=0
for f in ${FARRAY[@]}; do 
    file=$(basename $f)
    filename="${file%.*}"
    printf "\e[48;5;161m $COUNTER : $filename \e[0m \n"
    COUNTER=$[$COUNTER +1]
done

echo "Which script to you want to envoke. Enter Numeric Value or q to quit"
read CHOICE

if [ $CHOICE = "q" ]; then
    echo "Quitting"
    exit
fi

echo "Add any extra arguments here or press enter to skip"
read -e EXTRAARGS

if [[  -z $EXTRAARGS ]];
    then
    echo "No extra arguments chosen. Continuing..."
fi

source ${FARRAY[$CHOICE]} $EXTRAARGS
