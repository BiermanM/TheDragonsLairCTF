#!/bin/bash

if [[ $EUID -ne 0 ]]
then
  echo "Hints must be run as root."
  exit
fi

if [[ $(logname) != redteam ]]
then
  echo "Hints can only be run with the Red Team user account."
  exit
fi

lvl1p1="Reading ASCII is much easier on the eyes."
lvl1p2="Look at the official flags of the two locations."

lvl2p1="You will use the same type of decryption for the line above Frank in Clue #1."
lvl2p2="If it's not ASCII, binary, or decimal, what else could it be?"
lvl2p3="Sometimes two is better than one."
lvl2p4="It might just be easier to look at the first letter of each line in Clue #1."

lvl3p1="When I need password cracking, consulting with my friend John usually helps."
lvl3p2="This might help: https://linuxconfig.org/password-cracking-with-john-the-ripper-on-linux"

lvl4p1="Read everything very carefully"
lvl4p2="Read Section 1.1 of https://ctfs.github.io/resources/"
lvl4p3="Evooba LOVES Linkin Park"
lvl4p4="00110100 00110101 00101110 00110100 00110101 00111000 00110110 00110010 00110110 00101100 00100000 00111001 00101110 00110001 00111000 00110001 00111000 00110111 00110011"

lvl5p1="Start by sorting the files by date modified."
lvl5p2="Look for files with no permission restrictions."
lvl5p3="If only there was a way to look through the history of your opponent's terminal..."
lvl5p4="This will probably help with the decryption: https://linuxconfig.org/how-to-easily-encrypt-any-file-or-directory-with-mcrypt-on-linux-system"
lvl5p5="Do you remember Caesar's favorite number?"

lvl6p1="You should've read the readme, there are no hints for this level."

# Where "BiermanProductions7682" is the hostsystem password
##### CHANGE THE IP OF THE HOST SYSTEM #####

sshpass -p BiermanProductions7682 scp hostsystem@10.1.1.15:Desktop/Stats.txt /home/redteam/

currLvl=$(sed -n -e 2p /home/redteam/Stats.txt)
currProg=$(sed -n -e 3p /home/redteam/Stats.txt)
totHints=$(sed -n -e 4p /home/redteam/Stats.txt)

rm -rf /home/redteam/Stats.txt

if [ "$currLvl" == "1" ]
then
	if [ "$currProg" == "1" ]
	then
		echo Hint 1 out of 2 for Level 1: $lvl1p1
		((currProg++))
		((totHints++))
		echo "Run 'hints' again to see the next hint."
	elif [ "$currProg" == "2" ]
	then
		echo Hint 2 out of 2 for Level 1: $lvl1p2
		((currProg++))
		((totHints++))
	else
		echo There are no remaining hints for this level.
	fi
elif [ "$currLvl" == "2" ]
then
	if [ "$currProg" == "1" ]
	then
		echo Hint 1 out of 4 for Level 2: $lvl2p1
		((currProg++))
		((totHints++))
		echo "Run 'hints' again to see the next hint."
	elif [ "$currProg" == "2" ]
	then
		echo Hint 2 out of 4 for Level 2: $lvl2p2
		((currProg++))
		((totHints++))
		echo "Run 'hints' again to see the next hint."
	elif [ "$currProg" == "3" ]
	then
		echo Hint 3 out of 4 for Level 2: $lvl2p3
		((currProg++))
		((totHints++))
		echo "Run 'hints' again to see the next hint."
	elif [ "$currProg" == "4" ]
	then
		echo Hint 4 out of 4 for Level 2: $lvl2p4
		((currProg++))
		((totHints++))
	else
		echo There are no remaining hints for this level.
	fi
elif [ "$CurrLvl" == "3" ]
then
	if [ "$CurrProg" == "1" ]
	then
		echo Hint 1 out of 2 for Level 3: $lvl3p1
		((currProg++))
		((totHints++))
		echo "Run 'hints' again to see the next hint."
	elif [ "$CurrProg" == "2" ]
	then
		echo Hint 2 out of 2 for Level 3: $lvl3p2
		((currProg++))
		((totHints++))
	else
		echo There are no remaining hints for this level.
	fi
elif [ "$CurrLvl" == "4" ]
then
	if [ "$CurrProg" == "1" ]
	then
		echo Hint 1 out of 4 for Level 4: $lvl4p1
		((currProg++))
		((totHints++))
		echo "Run 'hints' again to see the next hint."
	elif [ "$CurrProg" == "2" ]
	then
		echo Hint 2 out of 4 for Level 4: $lvl4p2
		((currProg++))
		((totHints++))
		echo "Run 'hints' again to see the next hint."
	elif [ "$CurrProg" == "3" ]
	then
		echo Hint 3 out of 4 for Level 4: $lvl4p3
		((currProg++))
		((totHints++))
		echo "Run 'hints' again to see the next hint."
	elif [ "$CurrProg" == "4" ]
	then
		echo Hint 4 out of 4 for Level 4: $lvl4p4
		((currProg++))
		((totHints++))
	else
		echo There are no remaining hints for this level.
	fi
elif [ "$CurrLvl" == "5" ]
then
	if [ "$CurrProg" == "1" ]
	then
		echo Hint 1 out of 5 for Level 5: $lvl5p1
		((currProg++))
		((totHints++))
		echo "Run 'hints' again to see the next hint."
	elif [ "$CurrProg" == "2" ]
	then
		echo Hint 2 out of 5 for Level 5: $lvl5p2
		((currProg++))
		((totHints++))
		echo "Run 'hints' again to see the next hint."
	elif [ "$CurrProg" == "3" ]
	then
		echo Hint 3 out of 5 for Level 5: $lvl5p3
		((currProg++))
		((totHints++))
		echo "Run 'hints' again to see the next hint."
	elif [ "$CurrProg" == "4" ]
	then
		echo Hint 4 out of 5 for Level 5: $lvl5p4
		((currProg++))
		((totHints++))
		echo "Run 'hints' again to see the next hint."
	elif [ "$CurrProg" == "5" ]
	then
		echo Hint 5 out of 5 for Level 5: $lvl5p5
		((currProg++))
		((totHints++))
	else
		echo There are no remaining hints for this level.
	fi
elif [ "$CurrLvl" == "6" ]
then
	echo $lvl6p1
fi

sshpass -p BiermanProductions7682 ssh -o StrictHostKeyChecking=no hostsystem@10.1.1.15 "sed -i '3s/.*/$currProg/' Desktop/Stats.txt; exit"
sshpass -p BiermanProductions7682 ssh -o StrictHostKeyChecking=no hostsystem@10.1.1.15 "sed -i '4s/.*/$totHints/' Desktop/Stats.txt; exit"