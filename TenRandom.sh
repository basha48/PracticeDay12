#! /bin/bash

for (( i=0;i< 10; i++ ))
do

arr[$i]=$(( ( RANDOM % 1000 )  + 1 ))


done
echo ${arr[@]};

array=0;

for (( j=0; j<${#arr[@]};j++ ))
do
if [ ${arr[$j]} -gt $array ]
then

temp=$array
array=${arr[j]};
fi

done

echo "heighest value is " :$array;
echo "second highest value is":$temp;

arrays=$array;

for (( k=0; k<${#arr[@]};k++ ))
do
if [ ${arr[$k]} -lt $arrays ]
then

temp1=$arrays;
arrays=${arr[k]};
fi

done


echo "second smallest value is:" $temp1;
