#!/bin/bash
# Sets up Main Environment Variables before starting"
# DO NOT RUN outside of first time
#
sudo port install getopt
echo "alias reload='source $HOME/.bash_profile'" >> $HOME/.bash_profile
echo "export SCRIPTDIR=$(pwd)" >>  $HOME/.bash_profile
echo "alias srun=$SCRIPTDIR/choose-script.sh" >> $HOME/.bash_profilesudo mkdir -p /usr/local/bin
sudo mkdir -p /usr/local/bin
sudo ln -s /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport /usr/local/bin/airport
