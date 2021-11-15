#! /bin/bash

declare -A RollDice
declare -A RollDice1

for (( i=0;i<50;i++ ))

do


Dice=$(( ( RANDOM % 6 )  + 1 ));
RollDice[$i]=$Dice;

done

echo "dice is:"${RollDice[@]}

