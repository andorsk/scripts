#!/bin/bash

PERSIST=true
TMPFILE='temp-env-var.profile'
PROFILEDIR="$HOME/.bashrc.d/"
VAR=$1
VALUE=$2
PROCFILE="${PROFILEDIR}$TMPFILE"
DEFAULT_OVERWRITE=true
PARENTPATH=$(dirname "${BASH_SOURCE[0]}")


if [ $1 = "help" ]; then 
    echo "Sets the environment variable to the $HOME/.bashrc.d/temp-env-var.profile which temporarily persists the environments until it is clensed. Be careful, and provide a UNIQUE variable unless you want your old one to be overwritten. For now, please remember to use alias reload AFTER"
    printf "\e[0;35mUSAGE: ./set-env-var.sh <VAR> <VALUE>  \e[0m\n"
    exit
fi

if [[ "$PERSIST" = true && (! -z "$VAR" ) ]]; 
    then   

    if grep -q $VAR $PROCFILE; then
	echo "Varaible $VAR already set to $(grep $VAR $PROCFILE)"
	if [ "$DEFAULT_OVERWRITE" = true ]; 
	    then
	    echo "WARNING: This script will force remove the existing variable and reset it" 
	    sed -i '.bak' "/${VAR}/d" $PROCFILE
	else echo "Not overwriting file"
	fi
    fi

    echo "Exporting $VAR=$VALUE to $PROCFILE"
    echo  "export $VAR='$VALUE'" >> "$PROCFILE"
    
    else 
	echo "Nothing was done"
fi

