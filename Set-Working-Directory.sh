#~/bin/bash
#sets the environment variable to the directory
#add relative paths
if [[ ! -z $1 &&  $1 = "help" ]]; then 
    echo "Sets the CURRENT_WRK_DIR to the relative directory specified. Useful when you are using the same directory many times. WILL persist this in the environment profile until unset" 
    printf "\e[0;35mUSAGE: set-env-var.sh <relative-path>(optional)\n \e[0m"
    exit
fi

RELPATH=$1
PARENTPATH=$(dirname "${BASH_SOURCE[0]}")
if [[ !  -z "$RELPATH" ]]
    then
    source "${PARENTPATH}/Set-Environment-Variable.sh" "CURRENT_WRK_DIR" "$(pwd)/$RELPATH"
else 
    source "${PARENTPATH}/Set-Environment-Variable.sh" "CURRENT_WRK_DIR" "$(pwd)/$RELPATH"
fi
echo "CURRENT WORKING DIRECTORY IS SET TO $CURRENT_WRK_DIR"

echo "Dont forget to type 'reload' after." 