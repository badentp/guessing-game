#!/usr/hin/env bash
# Flle:guessinggame.sh

# find the number of files in the directory
filenum=$(ls | wc -l)
guess=0

#function to determine guess output
function checknum {
	echo $1
	local guess=$1
	if [[ $guess -eq $filenum ]]
	then
		echo "Congratulations, you've guessed it!"
	else
		if [[ $guess -lt $filenum ]]
		then
			echo "Too low, try again."
			continue
		else
			echo "Too high, try again."
			continue
		fi
	fi
}

echo $filenum

while [[ $guess -ne $filenum ]]
do
	echo "Guess how many files are in this directory"
	read guess
	checknum $guess
done
