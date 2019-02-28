#/!bin/bash
PARENTPATH=$(dirname "${BASH_SOURCE[0]}")
if [[ ( ! -z "$1") && ($1 = "help" ) ]]; then 
    echo "A brief weather report. Requires weather-cli"
    printf "\e[0;35mUSAGE: ./Weather Report.sh \e[0m\n"
    exit
fi
printf "\n\e[48;35;10m ------------------------------------------------ \e[0m\n"
printf "\e[48;5;00m                \e[0m\e[48;35;10mWEATHER REPORT\e[0m\e[48;5;00m                \e[0m \n"
weather -c "Los Angeles" -C USA
weather -c "San Francisco" -C USA
weather -c "Delhi" -C Indi
printf "\e[48;35;10m ------------------------------------------------ \e[0m\n"




