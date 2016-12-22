#!/bin/bash

if [[ $EUID -ne 0 ]]
then
  echo "Dragon must be run as root."
  exit
fi

if [[ $(logname) != redteam ]]
then
  echo "Hints can only be run with the Red Team user account."
  exit
fi

function nextLevel()
{
	clear
	# Parameter is the level number
	gnome-terminal --window-with-profile=redteam --full-screen -e "timeout 8s cmatrix -b -C red"&&paplay /usr/share/sounds/ubuntu/stereo/desktop-login.ogg
	gnome-terminal --window-with-profile=redteam --full-screen -e "sudo ./Desktop/.TheDragonsLair/Level$1Anim.sh"
	clear
}

clear

# Where "BiermanProductions7682" is the hostsystem password
##### CHANGE THE IP OF THE HOST SYSTEM #####

sshpass -p BiermanProductions7682 scp hostsystem@10.1.1.15:Desktop/Stats.txt /home/redteam/
currLvl=$(sed -n -e 2p /home/redteam/Stats.txt)

if [ "$currLvl" == "0" ]
then
	clear
	nextLevel 1
	sshpass -p BiermanProductions7682 ssh -o StrictHostKeyChecking=no hostsystem@10.1.1.15 "sed -i '2s/.*/1/' Desktop/Stats.txt; sed -i '3s/.*/1/' Desktop/Stats.txt; exit"
fi

sshpass -p BiermanProductions7682 scp hostsystem@10.1.1.15:Desktop/Stats.txt /home/redteam/
currLvl=$(sed -n -e 2p /home/redteam/Stats.txt)
rm -rf /home/redteam/Stats.txt

if [ "$currLvl" == "1" ]
then
	clear
	echo -e "Red Team, welcome to the Dragon! You are currently at level $currLvl.\n"
	echo What is the flag for Level 1?
	read flag

	if [[ $flag == "Flag of Milan" ]]
	then
		echo Not quite, what is a flag similar to the Flag of Milan?
	elif [[ $flag == "St. George's Cross" ]]
	then
		sshpass -p BiermanProductions7682 scp hostsystem@10.1.1.15:Desktop/RTLevel2.zip /home/redteam/Desktop/
		mv /home/redteam/Desktop/RTLevel2.zip /home/redteam/Desktop/"Level 2.zip"
		sshpass -p BiermanProductions7682 ssh -o StrictHostKeyChecking=no hostsystem@10.1.1.15 "sed -i '2s/.*/2/' Desktop/Stats.txt; sed -i '3s/.*/1/' Desktop/Stats.txt; exit"
		echo Correct! You have completed Level 1.
		nextLevel 2
	else
		echo Nope, try again!
	fi
fi

sshpass -p BiermanProductions7682 scp hostsystem@10.1.1.15:Desktop/Stats.txt /home/redteam/
currLvl=$(sed -n -e 2p /home/redteam/Stats.txt)
rm -rf /home/redteam/Stats.txt

if [ "$currLvl" == "2" ]
then
	clear
	echo -e "Red Team, welcome to the Dragon! You are currently at level $currLvl.\n"
	echo What is the flag for Level 2?
	read flag

	if [ $flag == "Cyb3r53C" ]
	then
		sshpass -p BiermanProductions7682 scp hostsystem@10.1.1.15:Desktop/RTLevel3.zip /home/redteam/Desktop/
		mv /home/redteam/Desktop/RTLevel3.zip /home/redteam/Desktop/"Level 3.zip"
		sshpass -p BiermanProductions7682 ssh -o StrictHostKeyChecking=no hostsystem@10.1.1.15 "sed -i '2s/.*/3/' Desktop/Stats.txt; sed -i '3s/.*/1/' Desktop/Stats.txt; exit"
		echo Correct! You have completed Level 2.
		nextLevel 3
	else
		echo Nope, try again!
	fi
fi

sshpass -p BiermanProductions7682 scp hostsystem@10.1.1.15:Desktop/Stats.txt /home/redteam/
currLvl=$(sed -n -e 2p /home/redteam/Stats.txt)
rm -rf /home/redteam/Stats.txt

if [ "$currLvl" == "3" ]
then
	clear
	echo -e "Red Team, welcome to the Dragon! You are currently at level $currLvl.\n"
	echo What is the flag for Level 3?
	read flag

	if [ $flag == "1_4M_SCR1pt_K1Dd13" ]
	then
		sshpass -p BiermanProductions7682 scp hostsystem@10.1.1.15:Desktop/RTLevel4.zip /home/redteam/Desktop/
		mv /home/redteam/Desktop/RTLevel4.zip /home/redteam/Desktop/"Level 4.zip"
		sshpass -p BiermanProductions7682 ssh -o StrictHostKeyChecking=no hostsystem@10.1.1.15 "sed -i '2s/.*/4/' Desktop/Stats.txt; sed -i '3s/.*/1/' Desktop/Stats.txt; exit"
		echo Correct! You have completed Level 3.
		nextLevel 4
	else
		echo Nope, try again!
	fi
fi

sshpass -p BiermanProductions7682 scp hostsystem@10.1.1.15:Desktop/Stats.txt /home/redteam/
currLvl=$(sed -n -e 2p /home/redteam/Stats.txt)
rm -rf /home/redteam/Stats.txt

if [ "$currLvl" == "4" ]
then
	clear
	echo -e "Red Team, welcome to the Dragon! You are currently at level $currLvl.\n"
	echo What is the first flag for Level 4?
	read flag1
	if [ $flag1 == "ribbon" ]
	then
		echo -e "Correct!\nYour next clue is: It is rumored that Caesar's favorite number is 13.\nWhat is the second flag for Level 4?"
		read flag2
		if [ $flag2 == "evooba" ]
		then
			echo -e "Correct!\nYour next clue is: Congrats, now you know my name. Since you know so much about me, where was I on June 10th, 2014?"
			read flag3
			if [[ $flag3 == "(Milan, Italy)" ]]
			then
				sshpass -p BiermanProductions7682 scp hostsystem@10.1.1.15:Desktop/RTLevel5.zip /home/redteam/Desktop/
				mv /home/redteam/Desktop/RTLevel5.zip /home/redteam/Desktop/"Level 5.zip"
				sshpass -p BiermanProductions7682 ssh -o StrictHostKeyChecking=no hostsystem@10.1.1.15 "sed -i '2s/.*/5/' Desktop/Stats.txt; sed -i '3s/.*/1/' Desktop/Stats.txt; exit"
				echo Correct! You have completed Level 4.
				nextLevel 5
			else
				echo "Nope, try again! The key must be in this format without quotes: '(City, Country)'"
			fi
		else
			echo Nope, try again!
		fi
	else
		echo Nope, try again!
	fi	
fi

sshpass -p BiermanProductions7682 scp hostsystem@10.1.1.15:Desktop/Stats.txt /home/redteam/
currLvl=$(sed -n -e 2p /home/redteam/Stats.txt)
rm -rf /home/redteam/Stats.txt

if [ "$currLvl" == "5" ]
then
	clear
	echo -e "Red Team, welcome to the Dragon! You are currently at level $currLvl.\n"
	echo What is the flag for Level 5?
	read flag

	if [ $flag == "ILUVASCII" ]
	then
		sshpass -p BiermanProductions7682 scp hostsystem@10.1.1.15:Desktop/RTLevel6.zip /home/redteam/Desktop/
		mv /home/redteam/Desktop/RTLevel6.zip /home/redteam/Desktop/"Level 6.zip"
		sshpass -p BiermanProductions7682 ssh -o StrictHostKeyChecking=no hostsystem@10.1.1.15 "sed -i '2s/.*/6/' Desktop/Stats.txt; sed -i '3s/.*/1/' Desktop/Stats.txt; exit"
		echo Correct! You have completed Level 5.
		nextLevel 6
	else
		echo Nope, try again!
	fi
fi

sshpass -p BiermanProductions7682 scp hostsystem@10.1.1.15:Desktop/Stats.txt /home/redteam/
currLvl=$(sed -n -e 2p /home/redteam/Stats.txt)
rm -rf /home/redteam/Stats.txt

if [ "$currLvl" == "6" ]
then
	clear
	echo -e "Red Team, welcome to the Dragon! You are currently at level $currLvl.\nThere is no flag for this level."
fi