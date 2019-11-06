#/!bin/bash
PARENTPATH=$(dirname "${BASH_SOURCE[0]}")
if [[ ( ! -z "$1") && ($1 = "help" ) ]]; then 
    echo "Run image in terminal"
    exit
fi

timg "$@"
