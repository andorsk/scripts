#!/bin/bash
STARTCOL="\e[48;35;10m"
ENDCOL="\e[0m"
printf "\n\e[48;35;10m ------------------------------------------------ \e[0m\n"
printf "\e[48;5;00m                \e[0m\e[48;35;10mTimeZoneReport\e[0m\e[48;5;00m                \e[0m"
printf "\n\e[48;35;10m ------------------------------------------------ \e[0m\n"
echo "Current Timezone"
sudo systemsetup -gettimezone 
printf "${STARTCOL}Current Date:${ENDCOL}$(date)\n" 
printf "${STARTCOL}India:${ENDCOL}$(date -v +810M)"
printf "\n\e[48;35;10m ------------------------------------------------ \e[0m\n"
echo ""