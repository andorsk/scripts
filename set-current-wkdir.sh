#~/bin/bash
#sets the environment variable to the directory
#add relative paths
 
RELPATH=$1
PARENTPATH=$(dirname "${BASH_SOURCE[0]}")
if [[ !  -z "$RELPATH" ]]
    then
    source "${PARENTPATH}/set-env-var.sh" "CURRENT_WRK_DIR" "$(pwd)/$RELPATH"
else 
    source "${PARENTPATH}/set-env-var.sh" "CURRENT_WRK_DIR" "$(pwd)/$RELPATH"
fi
echo "CURRENT WORKING DIRECTORY IS SET TO $CURRENT_WRK_DIR"