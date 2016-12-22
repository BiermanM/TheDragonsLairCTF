#!/bin/bash
clear

while [ true ]
do
	clear
	levelR=$(sed '2q;d' ./Desktop/Stats.txt)
	hintsR=$(sed '4q;d' ./Desktop/Stats.txt)
	levelB=$(sed '7q;d' ./Desktop/Stats.txt)
	hintsB=$(sed '9q;d' ./Desktop/Stats.txt)
	scoreR=$(( (( (( $levelR - 1 )) * 100 )) - (( $hintsR * 10 )) ))
	scoreB=$(( (( (( $levelB - 1 )) * 100 )) - (( $hintsB * 10 )) ))
	
	echo -e "Red Team Stats\t|\tBlue Team Stats\n\t\t|\nScore: $scoreR\t|\tScore: $scoreB\n\t\t|\nLevel: $levelR\t|\tLevel: $levelB"
	sleep 0.5s
done