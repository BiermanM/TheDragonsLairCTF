#!/bin/bash

if [[ $EUID -ne 0 ]]
then
  echo "Customer Service must be run as root."
  exit
fi

if [[ $(logname) != blueteam ]]
then
  echo "Customer Service can only be run with the Blue Team user account."
  exit
fi

echo -e "Welcome to Customer Service!\nType your message: "
read message

# Where "BiermanProductions7682" is the hostsystem password
##### CHANGE THE IP OF THE HOST SYSTEM #####

us=$(logname)
d=$(date "+%H_%M_%S")

sshpass -p BiermanProductions7682 ssh -o StrictHostKeyChecking=no hostsystem@10.1.1.15 "touch ./Desktop/"cs_$us_$d.txt"; echo $message >> ./Desktop/"cs_$us_$d.txt"; chmod 777 Desktop/"cs_$us_$d.txt"; exit"