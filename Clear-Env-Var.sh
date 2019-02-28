#/!bin/bash
PARENTPATH=$(dirname "${BASH_SOURCE[0]}")
if [[ ( ! -z "$1") && ($1 = "help" ) ]]; then 
    echo "Clears the environment variables that were temporarily persisted in the profile to $TMPDIR".
    printf "\e[0;35mUSAGE: ./clear-vars.sh \e[0m\n"
    exit
fi

echo "Moving old temporary profile to $TMPDIR"
mv $HOME/.bashrc.d/temp-env-var.profile* $TMPDIR


cat <<EOF  >> $HOME/.bashrc.d/temp-env-var.profile 
# --------------------------------------------------------
# Temporary Persistent Variables. Use the script ./set_env_variable
#----------------------------------------------------------
EOF

source "${PARENTPATH}/reload.sh"



