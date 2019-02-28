#!/bin/bash

PERSIST=true
TMPFILE='temp-env-var.profile'
PROFILEDIR="$HOME/.bashrc.d/"
VAR=$1
VALUE=$2
PROCFILE="${PROFILEDIR}$TMPFILE"

if [[ "$PERSIST" = true && (! -z "$VAR" ) ]]; 
    then   

    if grep -q $VAR $PROCFILE; then
	echo "Varaible $VAR already set to $(grep $VAR $PROCFILE)"
	echo "WARNING: This script will force remove the existing variable and reset it"
	sed -i '.bak' "/${VAR}/d" $PROCFILE 
    fi

    echo "Exporting $VAR=$VALUE to $PROCFILE"
    echo  "export $VAR='$VALUE'" >> "$PROCFILE"
    
    else 
	echo "Nothing was done"
fi

reload