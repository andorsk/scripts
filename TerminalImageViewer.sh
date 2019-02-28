#/!bin/bash
PARENTPATH=$(dirname "${BASH_SOURCE[0]}")
if [[ ( ! -z "$1") && ($1 = "help" ) ]]; then 
    echo "Manage wifi with this. Type --help for more options."
    printf "\e[0;35mUSAGE: ./WiFiManager.sh \e[0m\n"
    exit
fi

timg "$@"


