#!/bin/bash 
declare -A Dice
count=1

while [ $count -lt 30 ]
do
        random=$(((( RANDOM % 6 )) + 1 ))
        Dice[$random]=$(("${Dice[$random]}" + 1 ))
        count=$(($count+1))

done

for(( i=1; i<=6; i++ ))
do
        echo "Dice $i is:" ${Dice[$i]}
done

