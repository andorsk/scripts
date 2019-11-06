#/!bin/bash
PARENTPATH=$(dirname "${BASH_SOURCE[0]}")
if [[ ( ! -z "$1") && ($1 = "help" ) ]]; then 
    echo "Run image in terminal. Usage: TerminalImageViewer.sh <fontsize> <img_path>. If no fontzie, then uses default font size"
    exit
fi
VERSION=$1
echo -e "\033]50;SetProfile=FontSize${VERSION}\a" 

re='^[0-9]+$'

if ! [[ $VERSION =~ $re ]] ; then
    timg "${@}"
else
    timg "${@:2}"
fi


read -e finish

echo -e "\033]50;SetProfile=Default\a"
