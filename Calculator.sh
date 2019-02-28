#/!bin/bash
PARENTPATH=$(dirname "${BASH_SOURCE[0]}")
if [[ ( ! -z "$1") && ($1 = "help" ) ]]; then 
    echo "Calulcator tool. Type --help for more info"
    printf "\e[0;35mUSAGE: ./Calculator.sh \e[0m\n"
    exit
fi

bcal


