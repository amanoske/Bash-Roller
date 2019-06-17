#!/bin/bash
#Dice Rolling Program

while getopts f:n:b: option
do
case "${option}"
in
f) FACES=${OPTARG};;
n) NUMTIMES=${OPTARG};;
b) ADDBONUS=${OPTARG};;
esac
done

echo "    /                     "
echo "O===[====================- Rolling $NUMTIMES d$FACES..."
echo "    \                     "

for (( i=1; i<=NUMTIMES; i++))
do
	roll=$((1+RANDOM % FACES))
    bonusRoll=$((roll+ADDBONUS))
	echo "Rolled a d$FACES for $roll (with +$ADDBONUS, $bonusRoll)"
done 
