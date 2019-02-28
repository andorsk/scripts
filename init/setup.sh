#!/bin/bash
# Sets up Main Environment Variables before starting"
# DO NOT RUN outside of first time
#
echo "alias reload='source $HOME/.bash_profile'" >> $HOME/.bash_profile
echo "export SCRIPTDIR=$(pwd)" >>  $HOME/.bash_profile