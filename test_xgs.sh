#!/bin/bash
#setting varibles
COIN=GenesisX
#Setting Colors
BLUE='\033[0;96m'
GREEN='\033[0;92m'
RED='\033[0;91m'
YELLOW='\033[0;93m'
#clear font
CLEAR='\033[0m'

#Checking OS
if [[ $(lsb_release -d) != *16.04* ]]; then
  echo -e ${RED}"The operating system is not Ubuntu 16.04. You must be running on ubuntu 16.04."${CLEAR}
  exit 1
fi
#Menu to Confirm and Pull correct script
echo -e ${YELLOW}"Welcome to the $Coin Beta Automated Install Script by NullEntry"${CLEAR}
echo -e ${YELLOW}'THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND'${CLEAR}
echo -e ${YELLOW}"Durring this Process Please Hit Enter or Input What is Asked."${CLEAR}
echo
echo -e ${GREEN}"Are you sure you want to install $COIN Masternode? type y/n followed by [ENTER]:"${CLEAR}
read AGREE
if [[ $AGREE =~ "y" ]] ; then
echo -e ${GREEN}"Please enter the number (1-4) of $COIN Masternode(s) you would like to install :"${CLEAR}
read NUMBER
case $NUMBER in
  1)bash <(curl -Ls https://raw.githubusercontent.com/sburns1369/GenesisX_MN_Script/master/xgs_single.sh);;
  2)bash <(curl -Ls https://raw.githubusercontent.com/sburns1369/GenesisX_MN_Script/master/xgs_2pack.sh);;
  3)bash <(curl -Ls https://raw.githubusercontent.com/sburns1369/GenesisX_MN_Script/master/xgs_3pack.sh);;
  4)bash <(curl -Ls https://raw.githubusercontent.com/sburns1369/GenesisX_MN_Script/master/xgs_4pack.sh);;
  *)echo -e ${RED}"Invalid Option - Exiting Setup - Re-run to try again"${CLEAR};;
esac
else
echo -e "Exiting Setup!  You can re-run to try again"
fi