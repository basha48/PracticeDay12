#! /bin/bash
declare -A Dice
count=0

if [ $count -le 10 ]
then

for((i=0;i<30;i++))
do


        random=$(((( RANDOM % 6 )) + 1 ))
case $random in 

1)

count=$(($count+1))


        Dice[$random]=$(("${Dice[$random]}" + 1 ))
     
   ;;
2)

count=$(($count+1))
 Dice[$random]=$(("${Dice[$random]}" + 1 ))


   ;;

3) 
count=$(($count+1))



Dice[$random]=$(("${Dice[$random]}" + 1 ))
   ;;

4)

count=$(($count+1))


Dice[$random]=$(("${Dice[$random]}" + 1 ))
   ;;

5)

count=$(($count+1))


Dice[$random]=$(("${Dice[$random]}" + 1 ))
   ;;

6)


count=$(($count+1))



Dice[$random]=$(("${Dice[$random]}" + 1 ))
   ;;

esac;

done;

fi;
for(( i=1; i<=6; i++ ))
do
        echo "Dice $i is:" ${Dice[$i]}
done

maxEle=0;
  
for arg in ${Dice[@]}
do
    if [ $arg -gt $maxEle ]
    then
        maxEle=$arg
    fi
done
echo "maximum times  repeat the above value  is:" $maxEle "times";


for arg1 in ${Dice[@]}
do

  if [ $arg1 -lt $maxEle ]
then
minEle=$arg1;
fi
done
echo "minimum  times repeat  the above value is :"$minEle "times";
